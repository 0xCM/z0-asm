------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IExpr<Vector128<byte>> expr)
; eval_g[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 28 7a 90 c7 f7 7f 00 00 e8 5c 0e b1 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 d0 12 94 c7 f7 7f 00 00 e8 41 0e b1 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 b8 13 94 c7 f7 7f 00 00 e8 26 0e b1 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 68 14 94 c7 f7 7f 00 00 e8 0b 0e b1 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 78 7b 90 c7 f7 7f 00 00 e8 f0 0d b1 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb b0 17 24 c6 f7 7f 00 00 39 09 ff 15 af c8 ea fe 48 8b c8 e8 5f 97 ff ff c5 f9 10 70 08 48 8b cf 49 bb b8 17 24 c6 f7 7f 00 00 39 09 ff 15 95 c8 ea fe 48 8b c8 e8 3d 97 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 74 c8 c5 f9 ef f1 48 b9 f8 78 90 c7 f7 7f 00 00 e8 65 1d b1 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 98 17 24 c6 f7 7f 00 00 39 09 ff 15 29 c8 ea fe 48 b9 f8 78 90 c7 f7 7f 00 00 e8 32 1d b1 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb a0 17 24 c6 f7 7f 00 00 39 09 ff 15 00 c8 ea fe 48 8b c8 e8 c0 96 ff ff eb 27 48 8b c8 49 bb a8 17 24 c6 f7 7f 00 00 39 09 ff 15 e9 c7 ea fe 48 8b c8 e8 a1 96 ff ff eb 08 48 8b c8 e8 2f f8 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 e9 17 a6 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 b7 1c b1 5e 48 8b f8 48 8b ce 33 d2 e8 0a 80 96 4f 48 8b d0 48 8b cf e8 ef b3 ff fe 48 8b cf e8 e7 68 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c7907a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 7a 90 c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 0e b1 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c79412d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 12 94 c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 0e b1 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c79413b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 13 94 c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 0e b1 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c7941468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 14 94 c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 0e b1 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c7907b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 7b 90 c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 0d b1 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c62417b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 17 24 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-1153751h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 af c8 ea fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c738e668h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 97 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c62417b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 17 24 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-115376bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 95 c8 ea fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c738e668h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 97 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c79078f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 78 90 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 1d b1 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c6241798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 17 24 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-11537d7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 29 c8 ea fe}
011fh mov rcx,7ff7c79078f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 78 90 c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 1d b1 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c62417a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 17 24 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-1153800h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 00 c8 ea fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c738e668h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 96 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c62417a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 17 24 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-1153817h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e9 c7 ea fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c738e668h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 96 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c7394800h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f f8 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 17 a6 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 1c b1 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 80 96 4f}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef b3 ff fe}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 68 a8 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IExpr<Vector128<sbyte>> expr)
; eval_g[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 f8 7e 90 c7 f7 7f 00 00 e8 6c 0c b1 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 88 19 94 c7 f7 7f 00 00 e8 51 0c b1 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 70 1a 94 c7 f7 7f 00 00 e8 36 0c b1 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 20 1b 94 c7 f7 7f 00 00 e8 1b 0c b1 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 48 80 90 c7 f7 7f 00 00 e8 00 0c b1 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb d8 17 24 c6 f7 7f 00 00 39 09 ff 15 e7 c6 ea fe 48 8b c8 e8 9f 95 ff ff c5 f9 10 70 08 48 8b cf 49 bb e0 17 24 c6 f7 7f 00 00 39 09 ff 15 cd c6 ea fe 48 8b c8 e8 7d 95 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 74 c8 c5 f9 ef f1 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 75 1b b1 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb c0 17 24 c6 f7 7f 00 00 39 09 ff 15 61 c6 ea fe 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 42 1b b1 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb c8 17 24 c6 f7 7f 00 00 39 09 ff 15 38 c6 ea fe 48 8b c8 e8 00 95 ff ff eb 27 48 8b c8 49 bb d0 17 24 c6 f7 7f 00 00 39 09 ff 15 21 c6 ea fe 48 8b c8 e8 e1 94 ff ff eb 08 48 8b c8 e8 df f6 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 f9 15 a6 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 c7 1a b1 5e 48 8b f8 48 8b ce 33 d2 e8 1a 7e 96 4f 48 8b d0 48 8b cf e8 ff b1 ff fe 48 8b cf e8 f7 66 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c7907ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 7e 90 c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 0c b1 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c7941988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 19 94 c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 0c b1 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c7941a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 1a 94 c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 0c b1 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c7941b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 1b 94 c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 0c b1 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c7908048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 80 90 c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 0c b1 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c62417d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 17 24 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-1153919h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e7 c6 ea fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c738e698h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 95 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c62417e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 17 24 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-1153933h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 cd c6 ea fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c738e698h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 95 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 1b b1 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c62417c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 17 24 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-115399fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 61 c6 ea fe}
011fh mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 1b b1 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c62417c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 17 24 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-11539c8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 38 c6 ea fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c738e698h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 95 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c62417d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 17 24 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-11539dfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 21 c6 ea fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c738e698h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 94 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c73948a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df f6 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 15 a6 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 1a b1 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 7e 96 4f}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff b1 ff fe}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 66 a8 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IExpr<Vector128<ushort>> expr)
; eval_g[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 68 83 90 c7 f7 7f 00 00 e8 7c 0a b1 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 40 1c 94 c7 f7 7f 00 00 e8 61 0a b1 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 28 1d 94 c7 f7 7f 00 00 e8 46 0a b1 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 d8 1d 94 c7 f7 7f 00 00 e8 2b 0a b1 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 b8 84 90 c7 f7 7f 00 00 e8 10 0a b1 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 00 18 24 c6 f7 7f 00 00 39 09 ff 15 1f c5 ea fe 48 8b c8 e8 cf 93 ff ff c5 f9 10 70 08 48 8b cf 49 bb 08 18 24 c6 f7 7f 00 00 39 09 ff 15 05 c5 ea fe 48 8b c8 e8 ad 93 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 75 c8 c5 f9 ef f1 48 b9 38 82 90 c7 f7 7f 00 00 e8 85 19 b1 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb e8 17 24 c6 f7 7f 00 00 39 09 ff 15 99 c4 ea fe 48 b9 38 82 90 c7 f7 7f 00 00 e8 52 19 b1 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb f0 17 24 c6 f7 7f 00 00 39 09 ff 15 70 c4 ea fe 48 8b c8 e8 30 93 ff ff eb 27 48 8b c8 49 bb f8 17 24 c6 f7 7f 00 00 39 09 ff 15 59 c4 ea fe 48 8b c8 e8 11 93 ff ff eb 08 48 8b c8 e8 47 f5 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 09 14 a6 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 d7 18 b1 5e 48 8b f8 48 8b ce 33 d2 e8 2a 7c 96 4f 48 8b d0 48 8b cf e8 0f b0 ff fe 48 8b cf e8 07 65 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c7908368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 83 90 c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 0a b1 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c7941c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 1c 94 c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 0a b1 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c7941d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 1d 94 c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 0a b1 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c7941dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1d 94 c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 0a b1 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c79084b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 84 90 c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 0a b1 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c6241800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 18 24 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-1153ae1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1f c5 ea fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c738e6b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 93 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c6241808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 18 24 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-1153afbh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 05 c5 ea fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c738e6b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 93 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c7908238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 82 90 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 19 b1 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c62417e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 17 24 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-1153b67h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 99 c4 ea fe}
011fh mov rcx,7ff7c7908238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 82 90 c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 19 b1 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c62417f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 17 24 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-1153b90h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 70 c4 ea fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c738e6b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 93 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c62417f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 17 24 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-1153ba7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 59 c4 ea fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c738e6b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 93 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c73948f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 f5 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 14 a6 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 18 b1 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 7c 96 4f}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f b0 ff fe}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 65 a8 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IExpr<Vector128<short>> expr)
; eval_g[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 d8 87 90 c7 f7 7f 00 00 e8 8c 08 b1 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 f8 1e 94 c7 f7 7f 00 00 e8 71 08 b1 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 e0 1f 94 c7 f7 7f 00 00 e8 56 08 b1 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 90 20 94 c7 f7 7f 00 00 e8 3b 08 b1 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 28 89 90 c7 f7 7f 00 00 e8 20 08 b1 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 28 18 24 c6 f7 7f 00 00 39 09 ff 15 57 c3 ea fe 48 8b c8 e8 ff 91 ff ff c5 f9 10 70 08 48 8b cf 49 bb 30 18 24 c6 f7 7f 00 00 39 09 ff 15 3d c3 ea fe 48 8b c8 e8 dd 91 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 75 c8 c5 f9 ef f1 48 b9 a8 86 90 c7 f7 7f 00 00 e8 95 17 b1 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 10 18 24 c6 f7 7f 00 00 39 09 ff 15 d1 c2 ea fe 48 b9 a8 86 90 c7 f7 7f 00 00 e8 62 17 b1 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 18 18 24 c6 f7 7f 00 00 39 09 ff 15 a8 c2 ea fe 48 8b c8 e8 60 91 ff ff eb 27 48 8b c8 49 bb 20 18 24 c6 f7 7f 00 00 39 09 ff 15 91 c2 ea fe 48 8b c8 e8 41 91 ff ff eb 08 48 8b c8 e8 af f3 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 19 12 a6 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 e7 16 b1 5e 48 8b f8 48 8b ce 33 d2 e8 3a 7a 96 4f 48 8b d0 48 8b cf e8 1f ae ff fe 48 8b cf e8 17 63 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c79087d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 87 90 c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 08 b1 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c7941ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1e 94 c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 08 b1 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c7941fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 1f 94 c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 08 b1 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c7942090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 20 94 c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 08 b1 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c7908928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 89 90 c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 08 b1 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c6241828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 18 24 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-1153ca9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 57 c3 ea fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c738e6d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 91 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c6241830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 18 24 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-1153cc3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3d c3 ea fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c738e6d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 91 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c79086a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 86 90 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 17 b1 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c6241810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 18 24 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-1153d2fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d1 c2 ea fe}
011fh mov rcx,7ff7c79086a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 86 90 c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 17 b1 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c6241818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 18 24 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-1153d58h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a8 c2 ea fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c738e6d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 91 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c6241820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 18 24 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-1153d6fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 91 c2 ea fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c738e6d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 91 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c7394950h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af f3 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 12 a6 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 16 b1 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 7a 96 4f}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f ae ff fe}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 63 a8 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IExpr<Vector128<uint>> expr)
; eval_g[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 48 8c 90 c7 f7 7f 00 00 e8 9c 06 b1 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 b0 21 94 c7 f7 7f 00 00 e8 81 06 b1 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 98 22 94 c7 f7 7f 00 00 e8 66 06 b1 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 48 23 94 c7 f7 7f 00 00 e8 4b 06 b1 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 98 8d 90 c7 f7 7f 00 00 e8 30 06 b1 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 50 18 24 c6 f7 7f 00 00 39 09 ff 15 8f c1 ea fe 48 8b c8 e8 2f 90 ff ff c5 f9 10 70 08 48 8b cf 49 bb 58 18 24 c6 f7 7f 00 00 39 09 ff 15 75 c1 ea fe 48 8b c8 e8 0d 90 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 18 8b 90 c7 f7 7f 00 00 e8 a5 15 b1 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 38 18 24 c6 f7 7f 00 00 39 09 ff 15 09 c1 ea fe 48 b9 18 8b 90 c7 f7 7f 00 00 e8 72 15 b1 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 40 18 24 c6 f7 7f 00 00 39 09 ff 15 e0 c0 ea fe 48 8b c8 e8 90 8f ff ff eb 27 48 8b c8 49 bb 48 18 24 c6 f7 7f 00 00 39 09 ff 15 c9 c0 ea fe 48 8b c8 e8 71 8f ff ff eb 08 48 8b c8 e8 17 f2 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 29 10 a6 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 f7 14 b1 5e 48 8b f8 48 8b ce 33 d2 e8 4a 78 96 4f 48 8b d0 48 8b cf e8 2f ac ff fe 48 8b cf e8 27 61 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c7908c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 8c 90 c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 06 b1 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c79421b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 21 94 c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 06 b1 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c7942298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 22 94 c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 06 b1 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c7942348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 23 94 c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 06 b1 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c7908d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 8d 90 c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 06 b1 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c6241850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 18 24 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-1153e71h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8f c1 ea fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c738e6f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 90 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c6241858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 18 24 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-1153e8bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 75 c1 ea fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c738e6f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 90 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c7908b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 8b 90 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 15 b1 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c6241838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 18 24 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-1153ef7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 09 c1 ea fe}
011fh mov rcx,7ff7c7908b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 8b 90 c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 15 b1 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c6241840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 18 24 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-1153f20h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e0 c0 ea fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c738e6f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 8f ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c6241848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 18 24 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-1153f37h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c9 c0 ea fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c738e6f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 8f ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c73949a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 f2 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 10 a6 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 14 b1 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 78 96 4f}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f ac ff fe}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 61 a8 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IExpr<Vector128<int>> expr)
; eval_g[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 b8 90 90 c7 f7 7f 00 00 e8 9c 00 b1 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 68 24 94 c7 f7 7f 00 00 e8 81 00 b1 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 50 25 94 c7 f7 7f 00 00 e8 66 00 b1 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 00 26 94 c7 f7 7f 00 00 e8 4b 00 b1 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 08 92 90 c7 f7 7f 00 00 e8 30 00 b1 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 78 18 24 c6 f7 7f 00 00 39 09 ff 15 b7 bb ea fe 48 8b c8 e8 4f 8a ff ff c5 f9 10 70 08 48 8b cf 49 bb 80 18 24 c6 f7 7f 00 00 39 09 ff 15 9d bb ea fe 48 8b c8 e8 2d 8a ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 88 8f 90 c7 f7 7f 00 00 e8 a5 0f b1 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 60 18 24 c6 f7 7f 00 00 39 09 ff 15 31 bb ea fe 48 b9 88 8f 90 c7 f7 7f 00 00 e8 72 0f b1 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 68 18 24 c6 f7 7f 00 00 39 09 ff 15 08 bb ea fe 48 8b c8 e8 b0 89 ff ff eb 27 48 8b c8 49 bb 70 18 24 c6 f7 7f 00 00 39 09 ff 15 f1 ba ea fe 48 8b c8 e8 91 89 ff ff eb 08 48 8b c8 e8 6f fa ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 29 0a a6 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 f7 0e b1 5e 48 8b f8 48 8b ce 33 d2 e8 4a 72 96 4f 48 8b d0 48 8b cf e8 2f a6 ff fe 48 8b cf e8 27 5b a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c79090b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 90 90 c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 00 b1 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c7942468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 24 94 c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 00 b1 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c7942550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 25 94 c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 00 b1 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c7942600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 26 94 c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 00 b1 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c7909208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 92 90 c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 00 b1 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c6241878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 18 24 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-1154449h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b7 bb ea fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c738e718h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 8a ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c6241880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 18 24 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-1154463h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9d bb ea fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c738e718h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 8a ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c7908f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 8f 90 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 0f b1 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c6241860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 18 24 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-11544cfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 31 bb ea fe}
011fh mov rcx,7ff7c7908f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 8f 90 c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 0f b1 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c6241868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 18 24 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-11544f8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 08 bb ea fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c738e718h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 89 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c6241870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 18 24 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-115450fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f1 ba ea fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c738e718h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 89 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c7395800h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f fa ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 0a a6 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 0e b1 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 72 96 4f}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f a6 ff fe}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 5b a8 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IExpr<Vector128<ulong>> expr)
; eval_g[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 d8 f2 90 c7 f7 7f 00 00 e8 ac fe b0 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 20 27 94 c7 f7 7f 00 00 e8 91 fe b0 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 08 28 94 c7 f7 7f 00 00 e8 76 fe b0 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 b8 28 94 c7 f7 7f 00 00 e8 5b fe b0 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 98 44 92 c7 f7 7f 00 00 e8 40 fe b0 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb a0 18 24 c6 f7 7f 00 00 39 09 ff 15 ef b9 ea fe 48 8b c8 e8 ef 88 ff ff c5 f9 10 70 08 48 8b cf 49 bb a8 18 24 c6 f7 7f 00 00 39 09 ff 15 d5 b9 ea fe 48 8b c8 e8 cd 88 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 a8 f1 90 c7 f7 7f 00 00 e8 b5 0d b1 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 88 18 24 c6 f7 7f 00 00 39 09 ff 15 69 b9 ea fe 48 b9 a8 f1 90 c7 f7 7f 00 00 e8 82 0d b1 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 90 18 24 c6 f7 7f 00 00 39 09 ff 15 40 b9 ea fe 48 8b c8 e8 50 88 ff ff eb 27 48 8b c8 49 bb 98 18 24 c6 f7 7f 00 00 39 09 ff 15 29 b9 ea fe 48 8b c8 e8 31 88 ff ff eb 08 48 8b c8 e8 d7 f8 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 39 08 a6 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 07 0d b1 5e 48 8b f8 48 8b ce 33 d2 e8 5a 70 96 4f 48 8b d0 48 8b cf e8 3f a4 ff fe 48 8b cf e8 37 59 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c790f2d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f2 90 c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac fe b0 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c7942720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 27 94 c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 fe b0 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c7942808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 28 94 c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 fe b0 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c79428b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 28 94 c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b fe b0 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c7924498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 44 92 c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 fe b0 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c62418a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 18 24 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-1154611h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ef b9 ea fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c738e7a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 88 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c62418a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 18 24 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-115462bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d5 b9 ea fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c738e7a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 88 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c790f1a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f1 90 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 0d b1 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c6241888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 18 24 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-1154697h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 69 b9 ea fe}
011fh mov rcx,7ff7c790f1a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f1 90 c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 0d b1 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c6241890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 18 24 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-11546c0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 40 b9 ea fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c738e7a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 88 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c6241898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 18 24 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-11546d7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 29 b9 ea fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c738e7a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 88 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c7395858h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 f8 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 08 a6 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 0d b1 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 70 96 4f}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f a4 ff fe}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 59 a8 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IExpr<Vector128<long>> expr)
; eval_g[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 28 95 90 c7 f7 7f 00 00 e8 bc fc b0 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 d8 29 94 c7 f7 7f 00 00 e8 a1 fc b0 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 c0 2a 94 c7 f7 7f 00 00 e8 86 fc b0 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 70 2b 94 c7 f7 7f 00 00 e8 6b fc b0 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 78 96 90 c7 f7 7f 00 00 e8 50 fc b0 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb c8 18 24 c6 f7 7f 00 00 39 09 ff 15 27 b8 ea fe 48 8b c8 e8 1f 87 ff ff c5 f9 10 70 08 48 8b cf 49 bb d0 18 24 c6 f7 7f 00 00 39 09 ff 15 0d b8 ea fe 48 8b c8 e8 fd 86 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 f8 93 90 c7 f7 7f 00 00 e8 c5 0b b1 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb b0 18 24 c6 f7 7f 00 00 39 09 ff 15 a1 b7 ea fe 48 b9 f8 93 90 c7 f7 7f 00 00 e8 92 0b b1 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb b8 18 24 c6 f7 7f 00 00 39 09 ff 15 78 b7 ea fe 48 8b c8 e8 80 86 ff ff eb 27 48 8b c8 49 bb c0 18 24 c6 f7 7f 00 00 39 09 ff 15 61 b7 ea fe 48 8b c8 e8 61 86 ff ff eb 08 48 8b c8 e8 3f f7 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 49 06 a6 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 17 0b b1 5e 48 8b f8 48 8b ce 33 d2 e8 6a 6e 96 4f 48 8b d0 48 8b cf e8 4f a2 ff fe 48 8b cf e8 47 57 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c7909528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 95 90 c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc fc b0 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c79429d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 29 94 c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 fc b0 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c7942ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2a 94 c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 fc b0 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c7942b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 2b 94 c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b fc b0 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c7909678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 96 90 c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 fc b0 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c62418c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 18 24 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-11547d9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 27 b8 ea fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c738e7c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 87 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c62418d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 18 24 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-11547f3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0d b8 ea fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c738e7c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 86 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c79093f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 93 90 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 0b b1 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c62418b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 18 24 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-115485fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a1 b7 ea fe}
011fh mov rcx,7ff7c79093f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 93 90 c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 0b b1 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c62418b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 18 24 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-1154888h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 78 b7 ea fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c738e7c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 86 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c62418c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 18 24 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-115489fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 61 b7 ea fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c738e7c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 86 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c73958b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f f7 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 06 a6 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 0b b1 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 6e 96 4f}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f a2 ff fe}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 57 a8 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IExpr<Vector256<byte>> expr)
; eval_g[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 b0 9f 90 c7 f7 7f 00 00 e8 c3 fa b0 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 c0 31 94 c7 f7 7f 00 00 e8 a8 fa b0 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 a8 32 94 c7 f7 7f 00 00 e8 8d fa b0 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 58 33 94 c7 f7 7f 00 00 e8 72 fa b0 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 00 a1 90 c7 f7 7f 00 00 e8 57 fa b0 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb f0 18 24 c6 f7 7f 00 00 39 09 ff 15 56 b6 ea fe 48 8b c8 e8 a6 88 ff ff c5 fd 10 70 08 48 8b cf 49 bb f8 18 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 36 b6 ea fe 48 8b c8 e8 7e 88 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 80 9e 90 c7 f7 7f 00 00 e8 ba 09 b1 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb d8 18 24 c6 f7 7f 00 00 39 09 ff 15 b8 b5 ea fe 48 b9 80 9e 90 c7 f7 7f 00 00 e8 81 09 b1 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb e0 18 24 c6 f7 7f 00 00 39 09 ff 15 8f b5 ea fe 48 8b c8 e8 ef 87 ff ff eb 27 48 8b c8 49 bb e8 18 24 c6 f7 7f 00 00 39 09 ff 15 78 b5 ea fe 48 8b c8 e8 d0 87 ff ff eb 08 48 8b c8 e8 be f6 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 2c 04 a6 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 fa 08 b1 5e 48 8b f8 48 8b ce 33 d2 e8 4d 6c 96 4f 48 8b d0 48 8b cf e8 32 a0 ff fe 48 8b cf e8 2a 55 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c7909fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 9f 90 c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 fa b0 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c79431c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 31 94 c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 fa b0 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c79432a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 32 94 c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d fa b0 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c7943358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 33 94 c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 fa b0 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c790a100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 a1 90 c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 fa b0 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c62418f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 18 24 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-11549aah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 56 b6 ea fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c738eb48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 88 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c62418f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 18 24 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-11549cah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 36 b6 ea fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c738eb48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 88 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c7909e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9e 90 c7 f7 7f 00 00}
0111h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 09 b1 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c62418d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 18 24 c6 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-1154a48h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b8 b5 ea fe}
0140h mov rcx,7ff7c7909e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9e 90 c7 f7 7f 00 00}
014ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 09 b1 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c62418e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 18 24 c6 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-1154a71h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8f b5 ea fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c738eb48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 87 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c62418e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 18 24 c6 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-1154a88h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 78 b5 ea fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c738eb48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 87 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c7395a40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be f6 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 04 a6 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 08 b1 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 6c 96 4f}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 a0 ff fe}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 55 a8 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IExpr<Vector256<sbyte>> expr)
; eval_g[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 80 a4 90 c7 f7 7f 00 00 e8 93 f8 b0 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 78 38 94 c7 f7 7f 00 00 e8 78 f8 b0 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 60 39 94 c7 f7 7f 00 00 e8 5d f8 b0 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 10 3a 94 c7 f7 7f 00 00 e8 42 f8 b0 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 d0 a5 90 c7 f7 7f 00 00 e8 27 f8 b0 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 18 19 24 c6 f7 7f 00 00 39 09 ff 15 4e b4 ea fe 48 8b c8 e8 a6 86 ff ff c5 fd 10 70 08 48 8b cf 49 bb 20 19 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 2e b4 ea fe 48 8b c8 e8 7e 86 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 50 a3 90 c7 f7 7f 00 00 e8 8a 07 b1 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 00 19 24 c6 f7 7f 00 00 39 09 ff 15 b0 b3 ea fe 48 b9 50 a3 90 c7 f7 7f 00 00 e8 51 07 b1 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 08 19 24 c6 f7 7f 00 00 39 09 ff 15 87 b3 ea fe 48 8b c8 e8 ef 85 ff ff eb 27 48 8b c8 49 bb 10 19 24 c6 f7 7f 00 00 39 09 ff 15 70 b3 ea fe 48 8b c8 e8 d0 85 ff ff eb 08 48 8b c8 e8 2e f5 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 fc 01 a6 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 ca 06 b1 5e 48 8b f8 48 8b ce 33 d2 e8 1d 6a 96 4f 48 8b d0 48 8b cf e8 02 9e ff fe 48 8b cf e8 fa 52 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c790a480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 a4 90 c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 f8 b0 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c7943878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 38 94 c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 f8 b0 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c7943960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 39 94 c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d f8 b0 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c7943a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 3a 94 c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 f8 b0 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c790a5d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a5 90 c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 f8 b0 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c6241918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 19 24 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-1154bb2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4e b4 ea fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c738eb78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 86 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c6241920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 19 24 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-1154bd2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2e b4 ea fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c738eb78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 86 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c790a350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a3 90 c7 f7 7f 00 00}
0111h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 07 b1 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c6241900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 19 24 c6 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-1154c50h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b0 b3 ea fe}
0140h mov rcx,7ff7c790a350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a3 90 c7 f7 7f 00 00}
014ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 07 b1 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c6241908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 19 24 c6 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-1154c79h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 87 b3 ea fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c738eb78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 85 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c6241910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 19 24 c6 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-1154c90h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 70 b3 ea fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c738eb78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 85 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c7395ae0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e f5 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 01 a6 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 06 b1 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 6a 96 4f}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 9e ff fe}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 52 a8 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IExpr<Vector256<ushort>> expr)
; eval_g[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 f0 a8 90 c7 f7 7f 00 00 e8 63 f6 b0 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 30 3b 94 c7 f7 7f 00 00 e8 48 f6 b0 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 18 3c 94 c7 f7 7f 00 00 e8 2d f6 b0 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 c8 3c 94 c7 f7 7f 00 00 e8 12 f6 b0 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 40 aa 90 c7 f7 7f 00 00 e8 f7 f5 b0 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 40 19 24 c6 f7 7f 00 00 39 09 ff 15 46 b2 ea fe 48 8b c8 e8 96 84 ff ff c5 fd 10 70 08 48 8b cf 49 bb 48 19 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 26 b2 ea fe 48 8b c8 e8 6e 84 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 c0 a7 90 c7 f7 7f 00 00 e8 5a 05 b1 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 28 19 24 c6 f7 7f 00 00 39 09 ff 15 a8 b1 ea fe 48 b9 c0 a7 90 c7 f7 7f 00 00 e8 21 05 b1 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 30 19 24 c6 f7 7f 00 00 39 09 ff 15 7f b1 ea fe 48 8b c8 e8 df 83 ff ff eb 27 48 8b c8 49 bb 38 19 24 c6 f7 7f 00 00 39 09 ff 15 68 b1 ea fe 48 8b c8 e8 c0 83 ff ff eb 08 48 8b c8 e8 56 f3 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 cc ff a5 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 9a 04 b1 5e 48 8b f8 48 8b ce 33 d2 e8 ed 67 96 4f 48 8b d0 48 8b cf e8 d2 9b ff fe 48 8b cf e8 ca 50 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c790a8f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 a8 90 c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 f6 b0 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c7943b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 3b 94 c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 f6 b0 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c7943c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 3c 94 c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d f6 b0 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c7943cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 3c 94 c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 f6 b0 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c790aa40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 aa 90 c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 f5 b0 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c6241940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 19 24 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-1154dbah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 46 b2 ea fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c738eb98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 84 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c6241948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 19 24 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-1154ddah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 26 b2 ea fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c738eb98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 84 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c790a7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a7 90 c7 f7 7f 00 00}
0111h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 05 b1 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c6241928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 19 24 c6 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-1154e58h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a8 b1 ea fe}
0140h mov rcx,7ff7c790a7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a7 90 c7 f7 7f 00 00}
014ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 05 b1 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c6241930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 19 24 c6 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-1154e81h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7f b1 ea fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c738eb98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 83 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c6241938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 19 24 c6 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-1154e98h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 68 b1 ea fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c738eb98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 83 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c7395b38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 f3 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc ff a5 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 04 b1 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 67 96 4f}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 9b ff fe}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 50 a8 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IExpr<Vector256<short>> expr)
; eval_g[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 60 ad 90 c7 f7 7f 00 00 e8 33 f4 b0 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 e8 3d 94 c7 f7 7f 00 00 e8 18 f4 b0 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 d0 3e 94 c7 f7 7f 00 00 e8 fd f3 b0 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 80 3f 94 c7 f7 7f 00 00 e8 e2 f3 b0 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 b0 ae 90 c7 f7 7f 00 00 e8 c7 f3 b0 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 68 19 24 c6 f7 7f 00 00 39 09 ff 15 3e b0 ea fe 48 8b c8 e8 86 82 ff ff c5 fd 10 70 08 48 8b cf 49 bb 70 19 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 1e b0 ea fe 48 8b c8 e8 5e 82 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 30 ac 90 c7 f7 7f 00 00 e8 2a 03 b1 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 50 19 24 c6 f7 7f 00 00 39 09 ff 15 a0 af ea fe 48 b9 30 ac 90 c7 f7 7f 00 00 e8 f1 02 b1 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 58 19 24 c6 f7 7f 00 00 39 09 ff 15 77 af ea fe 48 8b c8 e8 cf 81 ff ff eb 27 48 8b c8 49 bb 60 19 24 c6 f7 7f 00 00 39 09 ff 15 60 af ea fe 48 8b c8 e8 b0 81 ff ff eb 08 48 8b c8 e8 7e f1 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 9c fd a5 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 6a 02 b1 5e 48 8b f8 48 8b ce 33 d2 e8 bd 65 96 4f 48 8b d0 48 8b cf e8 a2 99 ff fe 48 8b cf e8 9a 4e a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c790ad60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ad 90 c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 f4 b0 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c7943de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 3d 94 c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 f4 b0 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c7943ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 3e 94 c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd f3 b0 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c7943f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 3f 94 c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 f3 b0 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c790aeb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 ae 90 c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 f3 b0 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c6241968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 19 24 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-1154fc2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3e b0 ea fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c738ebb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 82 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c6241970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 19 24 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-1154fe2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1e b0 ea fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c738ebb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 82 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c790ac30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ac 90 c7 f7 7f 00 00}
0111h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 03 b1 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c6241950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 19 24 c6 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-1155060h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a0 af ea fe}
0140h mov rcx,7ff7c790ac30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ac 90 c7 f7 7f 00 00}
014ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 02 b1 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c6241958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 19 24 c6 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-1155089h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 77 af ea fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c738ebb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 81 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c6241960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 19 24 c6 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-11550a0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 60 af ea fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c738ebb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 81 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c7395b90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e f1 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c fd a5 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 02 b1 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 65 96 4f}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 99 ff fe}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 4e a8 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IExpr<Vector256<uint>> expr)
; eval_g[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 d0 b1 90 c7 f7 7f 00 00 e8 03 f2 b0 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 a0 40 94 c7 f7 7f 00 00 e8 e8 f1 b0 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 88 41 94 c7 f7 7f 00 00 e8 cd f1 b0 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 38 42 94 c7 f7 7f 00 00 e8 b2 f1 b0 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 20 b3 90 c7 f7 7f 00 00 e8 97 f1 b0 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 90 19 24 c6 f7 7f 00 00 39 09 ff 15 36 ae ea fe 48 8b c8 e8 76 80 ff ff c5 fd 10 70 08 48 8b cf 49 bb 98 19 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 16 ae ea fe 48 8b c8 e8 4e 80 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 a0 b0 90 c7 f7 7f 00 00 e8 fa 00 b1 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 78 19 24 c6 f7 7f 00 00 39 09 ff 15 98 ad ea fe 48 b9 a0 b0 90 c7 f7 7f 00 00 e8 c1 00 b1 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 80 19 24 c6 f7 7f 00 00 39 09 ff 15 6f ad ea fe 48 8b c8 e8 bf 7f ff ff eb 27 48 8b c8 49 bb 88 19 24 c6 f7 7f 00 00 39 09 ff 15 58 ad ea fe 48 8b c8 e8 a0 7f ff ff eb 08 48 8b c8 e8 a6 ef ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 6c fb a5 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 3a 00 b1 5e 48 8b f8 48 8b ce 33 d2 e8 8d 63 96 4f 48 8b d0 48 8b cf e8 72 97 ff fe 48 8b cf e8 6a 4c a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c790b1d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 b1 90 c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 f2 b0 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c79440a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 40 94 c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 f1 b0 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c7944188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 41 94 c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd f1 b0 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c7944238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 42 94 c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 f1 b0 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c790b320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b3 90 c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 f1 b0 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c6241990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 19 24 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-11551cah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 36 ae ea fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c738ebd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 80 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c6241998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 19 24 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-11551eah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 16 ae ea fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c738ebd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 80 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c790b0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 b0 90 c7 f7 7f 00 00}
0111h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 00 b1 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c6241978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 19 24 c6 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-1155268h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 98 ad ea fe}
0140h mov rcx,7ff7c790b0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 b0 90 c7 f7 7f 00 00}
014ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 00 b1 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c6241980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 19 24 c6 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-1155291h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6f ad ea fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c738ebd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 7f ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c6241988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 19 24 c6 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-11552a8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 58 ad ea fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c738ebd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 7f ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c7395be8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 ef ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c fb a5 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 00 b1 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 63 96 4f}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 97 ff fe}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 4c a8 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IExpr<Vector256<int>> expr)
; eval_g[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 40 b6 90 c7 f7 7f 00 00 e8 d3 eb b0 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 58 43 94 c7 f7 7f 00 00 e8 b8 eb b0 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 40 44 94 c7 f7 7f 00 00 e8 9d eb b0 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 f0 44 94 c7 f7 7f 00 00 e8 82 eb b0 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 90 b7 90 c7 f7 7f 00 00 e8 67 eb b0 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb b8 19 24 c6 f7 7f 00 00 39 09 ff 15 2e a8 ea fe 48 8b c8 e8 66 7a ff ff c5 fd 10 70 08 48 8b cf 49 bb c0 19 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 0e a8 ea fe 48 8b c8 e8 3e 7a ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 10 b5 90 c7 f7 7f 00 00 e8 ca fa b0 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb a0 19 24 c6 f7 7f 00 00 39 09 ff 15 90 a7 ea fe 48 b9 10 b5 90 c7 f7 7f 00 00 e8 91 fa b0 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb a8 19 24 c6 f7 7f 00 00 39 09 ff 15 67 a7 ea fe 48 8b c8 e8 af 79 ff ff eb 27 48 8b c8 49 bb b0 19 24 c6 f7 7f 00 00 39 09 ff 15 50 a7 ea fe 48 8b c8 e8 90 79 ff ff eb 08 48 8b c8 e8 9e fa ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 3c f5 a5 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 0a fa b0 5e 48 8b f8 48 8b ce 33 d2 e8 5d 5d 96 4f 48 8b d0 48 8b cf e8 42 91 ff fe 48 8b cf e8 3a 46 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c790b640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b6 90 c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 eb b0 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c7944358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 43 94 c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 eb b0 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c7944440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 44 94 c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d eb b0 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c79444f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 44 94 c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 eb b0 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c790b790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 b7 90 c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 eb b0 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c62419b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 19 24 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-11557d2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2e a8 ea fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c738ebf8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 7a ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c62419c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 19 24 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-11557f2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0e a8 ea fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c738ebf8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 7a ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c790b510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 b5 90 c7 f7 7f 00 00}
0111h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca fa b0 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c62419a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 19 24 c6 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-1155870h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 90 a7 ea fe}
0140h mov rcx,7ff7c790b510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 b5 90 c7 f7 7f 00 00}
014ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 fa b0 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c62419a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 19 24 c6 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-1155899h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 67 a7 ea fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c738ebf8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 79 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c62419b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 19 24 c6 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-11558b0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 50 a7 ea fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c738ebf8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 79 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c7396d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e fa ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c f5 a5 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a fa b0 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 5d 96 4f}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 91 ff fe}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 46 a8 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IExpr<Vector256<ulong>> expr)
; eval_g[504] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 50 01 92 c7 f7 7f 00 00 e8 a3 e9 b0 5e 48 85 c0 0f 85 f1 00 00 00 48 8b d6 48 b9 10 46 94 c7 f7 7f 00 00 e8 88 e9 b0 5e 48 85 c0 0f 85 0c 01 00 00 48 8b d6 48 b9 f8 46 94 c7 f7 7f 00 00 e8 6d e9 b0 5e 48 85 c0 0f 85 10 01 00 00 48 8b d6 48 b9 a8 47 94 c7 f7 7f 00 00 e8 52 e9 b0 5e 48 85 c0 0f 85 14 01 00 00 48 8b d6 48 b9 50 71 92 c7 f7 7f 00 00 e8 37 e9 b0 5e 48 8b f8 48 85 ff 0f 84 18 01 00 00 48 8b cf 49 bb e0 19 24 c6 f7 7f 00 00 39 09 ff 15 26 a6 ea fe 48 8b c8 e8 c6 78 ff ff c5 fd 10 70 08 48 8b cf 49 bb e8 19 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 06 a6 ea fe 48 8b c8 e8 9e 78 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 20 00 92 c7 f7 7f 00 00 e8 99 f8 b0 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb c8 19 24 c6 f7 7f 00 00 39 09 ff 15 87 a5 ea fe 48 b9 20 00 92 c7 f7 7f 00 00 e8 60 f8 b0 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb d0 19 24 c6 f7 7f 00 00 39 09 ff 15 5e a5 ea fe 48 8b c8 e8 0e 78 ff ff eb 27 48 8b c8 49 bb d8 19 24 c6 f7 7f 00 00 39 09 ff 15 47 a5 ea fe 48 8b c8 e8 ef 77 ff ff eb 08 48 8b c8 e8 c5 f8 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 0b f3 a5 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 d9 f7 b0 5e 48 8b f8 48 8b ce 33 d2 e8 2c 5b 96 4f 48 8b d0 48 8b cf e8 11 8f ff fe 48 8b cf e8 09 44 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c7920150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 01 92 c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 e9 b0 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0127h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f1 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c7944610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 46 94 c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 e9 b0 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0c 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c79446f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 46 94 c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d e9 b0 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 10 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c79447a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 47 94 c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 e9 b0 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c7927150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 71 92 c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 e9 b0 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 18 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c62419e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 19 24 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-11559dah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 26 a6 ea fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c738ec88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 78 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c62419e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 19 24 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-11559fah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 06 a6 ea fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c738ec88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 78 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
00feh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0102h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0108h mov rcx,7ff7c7920020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 00 92 c7 f7 7f 00 00}
0112h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 f8 b0 5e}
0117h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011dh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0122h jmp near ptr 01a3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0127h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012fh mov r11,7ff7c62419c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 19 24 c6 f7 7f 00 00}
0139h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013bh call qword ptr [rip-1155a79h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 87 a5 ea fe}
0141h mov rcx,7ff7c7920020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 00 92 c7 f7 7f 00 00}
014bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 f8 b0 5e}
0150h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0156h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015bh jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0160h mov r11,7ff7c62419d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 19 24 c6 f7 7f 00 00}
016ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016ch call qword ptr [rip-1155aa2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5e a5 ea fe}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h call 7ff7c738ec88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 78 ff ff}
017ah jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017fh mov r11,7ff7c62419d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 19 24 c6 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rip-1155ab9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 47 a5 ea fe}
0191h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0194h call 7ff7c738ec88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 77 ff ff}
0199h jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019eh call 7ff7c7396d68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 f8 ff ff}
01a3h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a4h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01aah vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01b0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b3h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bch ret                                     ; RET || C3 || encoded[1]{c3}
01bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01c0h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b f3 a5 5e}
01c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c8h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01d2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 f7 b0 5e}
01d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 5b 96 4f}
01e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01eah call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 8f ff fe}
01efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f2h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 44 a8 5e}
01f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IExpr<Vector256<long>> expr)
; eval_g[504] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 b0 ba 90 c7 f7 7f 00 00 e8 73 e7 b0 5e 48 85 c0 0f 85 f1 00 00 00 48 8b d6 48 b9 c8 48 94 c7 f7 7f 00 00 e8 58 e7 b0 5e 48 85 c0 0f 85 0c 01 00 00 48 8b d6 48 b9 b0 49 94 c7 f7 7f 00 00 e8 3d e7 b0 5e 48 85 c0 0f 85 10 01 00 00 48 8b d6 48 b9 60 4a 94 c7 f7 7f 00 00 e8 22 e7 b0 5e 48 85 c0 0f 85 14 01 00 00 48 8b d6 48 b9 00 bc 90 c7 f7 7f 00 00 e8 07 e7 b0 5e 48 8b f8 48 85 ff 0f 84 18 01 00 00 48 8b cf 49 bb 08 1a 24 c6 f7 7f 00 00 39 09 ff 15 1e a4 ea fe 48 8b c8 e8 b6 76 ff ff c5 fd 10 70 08 48 8b cf 49 bb 10 1a 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 fe a3 ea fe 48 8b c8 e8 8e 76 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 80 b9 90 c7 f7 7f 00 00 e8 69 f6 b0 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb f0 19 24 c6 f7 7f 00 00 39 09 ff 15 7f a3 ea fe 48 b9 80 b9 90 c7 f7 7f 00 00 e8 30 f6 b0 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb f8 19 24 c6 f7 7f 00 00 39 09 ff 15 56 a3 ea fe 48 8b c8 e8 fe 75 ff ff eb 27 48 8b c8 49 bb 00 1a 24 c6 f7 7f 00 00 39 09 ff 15 3f a3 ea fe 48 8b c8 e8 df 75 ff ff eb 08 48 8b c8 e8 ed f6 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 db f0 a5 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 a9 f5 b0 5e 48 8b f8 48 8b ce 33 d2 e8 fc 58 96 4f 48 8b d0 48 8b cf e8 e1 8c ff fe 48 8b cf e8 d9 41 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c790bab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 ba 90 c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 e7 b0 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0127h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f1 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c79448c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 48 94 c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 e7 b0 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0c 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c79449b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 49 94 c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d e7 b0 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 10 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c7944a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 4a 94 c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 e7 b0 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c790bc00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 bc 90 c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 e7 b0 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 18 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c6241a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1a 24 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-1155be2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1e a4 ea fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c738eca8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 76 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c6241a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1a 24 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-1155c02h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fe a3 ea fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c738eca8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 76 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
00feh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0102h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0108h mov rcx,7ff7c790b980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b9 90 c7 f7 7f 00 00}
0112h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 f6 b0 5e}
0117h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011dh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0122h jmp near ptr 01a3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0127h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012fh mov r11,7ff7c62419f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 19 24 c6 f7 7f 00 00}
0139h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013bh call qword ptr [rip-1155c81h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7f a3 ea fe}
0141h mov rcx,7ff7c790b980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b9 90 c7 f7 7f 00 00}
014bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 f6 b0 5e}
0150h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0156h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015bh jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0160h mov r11,7ff7c62419f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 19 24 c6 f7 7f 00 00}
016ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016ch call qword ptr [rip-1155caah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 56 a3 ea fe}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h call 7ff7c738eca8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 75 ff ff}
017ah jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017fh mov r11,7ff7c6241a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1a 24 c6 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rip-1155cc1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3f a3 ea fe}
0191h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0194h call 7ff7c738eca8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 75 ff ff}
0199h jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019eh call 7ff7c7396dc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed f6 ff ff}
01a3h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a4h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01aah vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01b0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b3h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bch ret                                     ; RET || C3 || encoded[1]{c3}
01bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01c0h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db f0 a5 5e}
01c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c8h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01d2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 f5 b0 5e}
01d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 58 96 4f}
01e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01eah call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 8c ff fe}
01efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f2h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 41 a8 5e}
01f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IOperator<Vector128<byte>> expr)
; eval_g[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 e0 50 94 c7 f7 7f 00 00 e8 3b e5 b0 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 d8 52 94 c7 f7 7f 00 00 e8 1d e5 b0 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 00 55 94 c7 f7 7f 00 00 e8 ff e4 b0 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 88 56 94 c7 f7 7f 00 00 e8 e1 e4 b0 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 58 1a 24 c6 f7 7f 00 00 39 09 ff 15 48 a2 ea fe 8b d8 48 8b cf 49 bb 60 1a 24 c6 f7 7f 00 00 39 09 ff 15 39 a2 ea fe 48 8b c8 e8 21 d6 ff ff c5 f9 10 70 08 48 8b cf 49 bb 68 1a 24 c6 f7 7f 00 00 39 09 ff 15 1f a2 ea fe 48 8b c8 e8 ff d5 ff ff c5 f9 10 78 08 48 8b cf 49 bb 70 1a 24 c6 f7 7f 00 00 39 09 ff 15 05 a2 ea fe 48 8b c8 e8 dd d5 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 06 97 fc ff 48 b9 f8 78 90 c7 f7 7f 00 00 e8 f7 f3 b0 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 18 1a 24 c6 f7 7f 00 00 39 09 ff 15 21 a1 ea fe 8b e8 48 8b cf 49 bb 20 1a 24 c6 f7 7f 00 00 39 09 ff 15 12 a1 ea fe 48 8b c8 e8 3a d5 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 ab 16 fc ff 48 b9 f8 78 90 c7 f7 7f 00 00 e8 6c f3 b0 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 28 1a 24 c6 f7 7f 00 00 39 09 ff 15 a3 a0 ea fe 8b f0 48 8b cb 49 bb 30 1a 24 c6 f7 7f 00 00 39 09 ff 15 94 a0 ea fe 48 8b c8 e8 ac d4 ff ff c5 f9 10 70 08 48 8b cb 49 bb 38 1a 24 c6 f7 7f 00 00 39 09 ff 15 7a a0 ea fe 48 8b c8 e8 8a d4 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 c0 57 fc ff 48 b9 f8 78 90 c7 f7 7f 00 00 e8 b1 f2 b0 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 40 1a 24 c6 f7 7f 00 00 39 09 ff 15 00 a0 ea fe 8b f0 48 8b cd 49 bb 48 1a 24 c6 f7 7f 00 00 39 09 ff 15 f1 9f ea fe 48 8b c8 e8 f1 d3 ff ff c5 f9 10 70 08 48 8b cd 49 bb 50 1a 24 c6 f7 7f 00 00 39 09 ff 15 d7 9f ea fe 48 8b c8 e8 77 3f ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 f3 f4 ff ff 48 b9 f8 78 90 c7 f7 7f 00 00 e8 04 f2 b0 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 f3 ec a5 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 c1 f1 b0 5e 48 8b f8 48 8b ce 33 d2 e8 14 55 96 4f 48 8b d0 48 8b cf e8 f9 88 ff fe 48 8b cf e8 f1 3d a8 5e cc}
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
0026h mov rcx,7ff7c79450e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 50 94 c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b e5 b0 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c79452d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 52 94 c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d e5 b0 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c7945500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 55 94 c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff e4 b0 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c7945688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 56 94 c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 e4 b0 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6241a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1a 24 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-1155db8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 48 a2 ea fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6241a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1a 24 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-1155dc7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 39 a2 ea fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c7394e50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 d6 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6241a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1a 24 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-1155de1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1f a2 ea fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c7394e50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff d5 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6241a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1a 24 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-1155dfbh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 05 a2 ea fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c7394e50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd d5 ff ff}
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
0145h call 7ff7c7360fb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 97 fc ff}
014ah mov rcx,7ff7c79078f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 78 90 c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 f3 b0 5e}
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
0185h mov r11,7ff7c6241a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1a 24 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-1155edfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 21 a1 ea fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c6241a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1a 24 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-1155eeeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 12 a1 ea fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c7394e50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a d5 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c7358fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 16 fc ff}
01d5h mov rcx,7ff7c79078f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 78 90 c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c f3 b0 5e}
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
0213h mov r11,7ff7c6241a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1a 24 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-1155f5dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a3 a0 ea fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c6241a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1a 24 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-1155f6ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 94 a0 ea fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c7394e50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac d4 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c6241a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1a 24 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-1155f86h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7a a0 ea fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c7394e50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a d4 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c735d1b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 57 fc ff}
0290h mov rcx,7ff7c79078f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 78 90 c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 f2 b0 5e}
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
02ceh mov r11,7ff7c6241a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1a 24 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-1156000h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 00 a0 ea fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c6241a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1a 24 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-115600fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f1 9f ea fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c7394e50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 d3 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c6241a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1a 24 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-1156029h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d7 9f ea fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c738b9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 3f ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c7396f90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 f4 ff ff}
033dh mov rcx,7ff7c79078f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 78 90 c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 f2 b0 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 ec a5 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 f1 b0 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 55 96 4f}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 88 ff fe}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 3d a8 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IOperator<Vector128<sbyte>> expr)
; eval_g[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 60 62 94 c7 f7 7f 00 00 e8 3b e1 b0 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 58 64 94 c7 f7 7f 00 00 e8 1d e1 b0 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 80 66 94 c7 f7 7f 00 00 e8 ff e0 b0 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 08 68 94 c7 f7 7f 00 00 e8 e1 e0 b0 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb b8 1a 24 c6 f7 7f 00 00 39 09 ff 15 a8 9e ea fe 8b d8 48 8b cf 49 bb c0 1a 24 c6 f7 7f 00 00 39 09 ff 15 99 9e ea fe 48 8b c8 e8 11 d4 ff ff c5 f9 10 70 08 48 8b cf 49 bb c8 1a 24 c6 f7 7f 00 00 39 09 ff 15 7f 9e ea fe 48 8b c8 e8 ef d3 ff ff c5 f9 10 78 08 48 8b cf 49 bb d0 1a 24 c6 f7 7f 00 00 39 09 ff 15 65 9e ea fe 48 8b c8 e8 cd d3 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 86 93 fc ff 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 f7 ef b0 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 78 1a 24 c6 f7 7f 00 00 39 09 ff 15 81 9d ea fe 8b e8 48 8b cf 49 bb 80 1a 24 c6 f7 7f 00 00 39 09 ff 15 72 9d ea fe 48 8b c8 e8 2a d3 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 eb 13 fc ff 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 6c ef b0 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 88 1a 24 c6 f7 7f 00 00 39 09 ff 15 03 9d ea fe 8b f0 48 8b cb 49 bb 90 1a 24 c6 f7 7f 00 00 39 09 ff 15 f4 9c ea fe 48 8b c8 e8 9c d2 ff ff c5 f9 10 70 08 48 8b cb 49 bb 98 1a 24 c6 f7 7f 00 00 39 09 ff 15 da 9c ea fe 48 8b c8 e8 7a d2 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 a0 56 fc ff 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 b1 ee b0 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb a0 1a 24 c6 f7 7f 00 00 39 09 ff 15 60 9c ea fe 8b f0 48 8b cd 49 bb a8 1a 24 c6 f7 7f 00 00 39 09 ff 15 51 9c ea fe 48 8b c8 e8 e1 d1 ff ff c5 f9 10 70 08 48 8b cd 49 bb b0 1a 24 c6 f7 7f 00 00 39 09 ff 15 37 9c ea fe 48 8b c8 e8 77 3b ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 8b f1 ff ff 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 04 ee b0 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 f3 e8 a5 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 c1 ed b0 5e 48 8b f8 48 8b ce 33 d2 e8 14 51 96 4f 48 8b d0 48 8b cf e8 f9 84 ff fe 48 8b cf e8 f1 39 a8 5e cc}
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
0026h mov rcx,7ff7c7946260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 62 94 c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b e1 b0 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c7946458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 64 94 c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d e1 b0 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c7946680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 66 94 c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff e0 b0 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c7946808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 68 94 c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 e0 b0 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6241ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1a 24 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-1156158h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a8 9e ea fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6241ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1a 24 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-1156167h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 99 9e ea fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c7395040h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 d4 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6241ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1a 24 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-1156181h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7f 9e ea fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c7395040h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef d3 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6241ad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1a 24 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-115619bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 65 9e ea fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c7395040h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd d3 ff ff}
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
0145h call 7ff7c7361030h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 93 fc ff}
014ah mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 ef b0 5e}
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
0185h mov r11,7ff7c6241a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1a 24 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-115627fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 81 9d ea fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c6241a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1a 24 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-115628eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 72 9d ea fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c7395040h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a d3 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c7359120h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 13 fc ff}
01d5h mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c ef b0 5e}
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
0213h mov r11,7ff7c6241a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1a 24 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-11562fdh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 03 9d ea fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c6241a90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1a 24 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-115630ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f4 9c ea fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c7395040h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c d2 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c6241a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1a 24 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-1156326h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 da 9c ea fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c7395040h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a d2 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c735d490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 56 fc ff}
0290h mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 ee b0 5e}
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
02ceh mov r11,7ff7c6241aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1a 24 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-11563a0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 60 9c ea fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c6241aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1a 24 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-11563afh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 51 9c ea fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c7395040h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 d1 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c6241ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1a 24 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-11563c9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 37 9c ea fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c738b9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 3b ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c7397028h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b f1 ff ff}
033dh mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 ee b0 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 e8 a5 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 ed b0 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 51 96 4f}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 84 ff fe}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 39 a8 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IOperator<Vector128<ushort>> expr)
; eval_g[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 60 6a 94 c7 f7 7f 00 00 e8 3b dd b0 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 58 6c 94 c7 f7 7f 00 00 e8 1d dd b0 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 80 6e 94 c7 f7 7f 00 00 e8 ff dc b0 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 08 70 94 c7 f7 7f 00 00 e8 e1 dc b0 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 18 1b 24 c6 f7 7f 00 00 39 09 ff 15 08 9b ea fe 8b d8 48 8b cf 49 bb 20 1b 24 c6 f7 7f 00 00 39 09 ff 15 f9 9a ea fe 48 8b c8 e8 01 d2 ff ff c5 f9 10 70 08 48 8b cf 49 bb 28 1b 24 c6 f7 7f 00 00 39 09 ff 15 df 9a ea fe 48 8b c8 e8 df d1 ff ff c5 f9 10 78 08 48 8b cf 49 bb 30 1b 24 c6 f7 7f 00 00 39 09 ff 15 c5 9a ea fe 48 8b c8 e8 bd d1 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 06 90 fc ff 48 b9 38 82 90 c7 f7 7f 00 00 e8 f7 eb b0 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb d8 1a 24 c6 f7 7f 00 00 39 09 ff 15 e1 99 ea fe 8b e8 48 8b cf 49 bb e0 1a 24 c6 f7 7f 00 00 39 09 ff 15 d2 99 ea fe 48 8b c8 e8 1a d1 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 2b 11 fc ff 48 b9 38 82 90 c7 f7 7f 00 00 e8 6c eb b0 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb e8 1a 24 c6 f7 7f 00 00 39 09 ff 15 63 99 ea fe 8b f0 48 8b cb 49 bb f0 1a 24 c6 f7 7f 00 00 39 09 ff 15 54 99 ea fe 48 8b c8 e8 8c d0 ff ff c5 f9 10 70 08 48 8b cb 49 bb f8 1a 24 c6 f7 7f 00 00 39 09 ff 15 3a 99 ea fe 48 8b c8 e8 6a d0 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 80 55 fc ff 48 b9 38 82 90 c7 f7 7f 00 00 e8 b1 ea b0 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 00 1b 24 c6 f7 7f 00 00 39 09 ff 15 c0 98 ea fe 8b f0 48 8b cd 49 bb 08 1b 24 c6 f7 7f 00 00 39 09 ff 15 b1 98 ea fe 48 8b c8 e8 d1 cf ff ff c5 f9 10 70 08 48 8b cd 49 bb 10 1b 24 c6 f7 7f 00 00 39 09 ff 15 97 98 ea fe 48 8b c8 e8 77 37 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 f3 ed ff ff 48 b9 38 82 90 c7 f7 7f 00 00 e8 04 ea b0 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 f3 e4 a5 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 c1 e9 b0 5e 48 8b f8 48 8b ce 33 d2 e8 14 4d 96 4f 48 8b d0 48 8b cf e8 f9 80 ff fe 48 8b cf e8 f1 35 a8 5e cc}
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
0026h mov rcx,7ff7c7946a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6a 94 c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b dd b0 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c7946c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 6c 94 c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d dd b0 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c7946e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 6e 94 c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff dc b0 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c7947008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 70 94 c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 dc b0 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6241b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1b 24 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-11564f8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 08 9b ea fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6241b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1b 24 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-1156507h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f9 9a ea fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c7395230h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 d2 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6241b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1b 24 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-1156521h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 df 9a ea fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c7395230h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df d1 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6241b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1b 24 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-115653bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c5 9a ea fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c7395230h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd d1 ff ff}
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
0145h call 7ff7c73610b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 90 fc ff}
014ah mov rcx,7ff7c7908238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 82 90 c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 eb b0 5e}
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
0185h mov r11,7ff7c6241ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1a 24 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-115661fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e1 99 ea fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c6241ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1a 24 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-115662eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 99 ea fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c7395230h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a d1 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c7359260h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 11 fc ff}
01d5h mov rcx,7ff7c7908238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 82 90 c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c eb b0 5e}
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
0213h mov r11,7ff7c6241ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1a 24 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-115669dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 63 99 ea fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c6241af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1a 24 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-11566ach]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 54 99 ea fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c7395230h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c d0 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c6241af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1a 24 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-11566c6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3a 99 ea fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c7395230h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a d0 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c735d770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 55 fc ff}
0290h mov rcx,7ff7c7908238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 82 90 c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 ea b0 5e}
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
02ceh mov r11,7ff7c6241b00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1b 24 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-1156740h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c0 98 ea fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c6241b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1b 24 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-115674fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b1 98 ea fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c7395230h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 cf ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c6241b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1b 24 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-1156769h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 97 98 ea fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c738b9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 37 ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c7397090h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 ed ff ff}
033dh mov rcx,7ff7c7908238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 82 90 c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 ea b0 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 e4 a5 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 e9 b0 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 4d 96 4f}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 80 ff fe}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 35 a8 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IOperator<Vector128<short>> expr)
; eval_g[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 60 72 94 c7 f7 7f 00 00 e8 3b d5 b0 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 58 74 94 c7 f7 7f 00 00 e8 1d d5 b0 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 80 76 94 c7 f7 7f 00 00 e8 ff d4 b0 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 08 78 94 c7 f7 7f 00 00 e8 e1 d4 b0 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 78 1b 24 c6 f7 7f 00 00 39 09 ff 15 68 93 ea fe 8b d8 48 8b cf 49 bb 80 1b 24 c6 f7 7f 00 00 39 09 ff 15 59 93 ea fe 48 8b c8 e8 f1 cb ff ff c5 f9 10 70 08 48 8b cf 49 bb 88 1b 24 c6 f7 7f 00 00 39 09 ff 15 3f 93 ea fe 48 8b c8 e8 cf cb ff ff c5 f9 10 78 08 48 8b cf 49 bb 90 1b 24 c6 f7 7f 00 00 39 09 ff 15 25 93 ea fe 48 8b c8 e8 ad cb ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 86 8c fc ff 48 b9 a8 86 90 c7 f7 7f 00 00 e8 f7 e3 b0 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 38 1b 24 c6 f7 7f 00 00 39 09 ff 15 41 92 ea fe 8b e8 48 8b cf 49 bb 40 1b 24 c6 f7 7f 00 00 39 09 ff 15 32 92 ea fe 48 8b c8 e8 0a cb ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 6b 0a fc ff 48 b9 a8 86 90 c7 f7 7f 00 00 e8 6c e3 b0 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 48 1b 24 c6 f7 7f 00 00 39 09 ff 15 c3 91 ea fe 8b f0 48 8b cb 49 bb 50 1b 24 c6 f7 7f 00 00 39 09 ff 15 b4 91 ea fe 48 8b c8 e8 7c ca ff ff c5 f9 10 70 08 48 8b cb 49 bb 58 1b 24 c6 f7 7f 00 00 39 09 ff 15 9a 91 ea fe 48 8b c8 e8 5a ca ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 60 50 fc ff 48 b9 a8 86 90 c7 f7 7f 00 00 e8 b1 e2 b0 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 60 1b 24 c6 f7 7f 00 00 39 09 ff 15 20 91 ea fe 8b f0 48 8b cd 49 bb 68 1b 24 c6 f7 7f 00 00 39 09 ff 15 11 91 ea fe 48 8b c8 e8 c1 c9 ff ff c5 f9 10 70 08 48 8b cd 49 bb 70 1b 24 c6 f7 7f 00 00 39 09 ff 15 f7 90 ea fe 48 8b c8 e8 77 2f ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 f3 f8 ff ff 48 b9 a8 86 90 c7 f7 7f 00 00 e8 04 e2 b0 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 f3 dc a5 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 c1 e1 b0 5e 48 8b f8 48 8b ce 33 d2 e8 14 45 96 4f 48 8b d0 48 8b cf e8 f9 78 ff fe 48 8b cf e8 f1 2d a8 5e cc}
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
0026h mov rcx,7ff7c7947260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 72 94 c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b d5 b0 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c7947458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 74 94 c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d d5 b0 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c7947680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 76 94 c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff d4 b0 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c7947808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 78 94 c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 d4 b0 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6241b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1b 24 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-1156c98h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 68 93 ea fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6241b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1b 24 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-1156ca7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 59 93 ea fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c7395420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 cb ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6241b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1b 24 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-1156cc1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3f 93 ea fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c7395420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf cb ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6241b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1b 24 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-1156cdbh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 25 93 ea fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c7395420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad cb ff ff}
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
0145h call 7ff7c7361530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 8c fc ff}
014ah mov rcx,7ff7c79086a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 86 90 c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 e3 b0 5e}
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
0185h mov r11,7ff7c6241b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1b 24 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-1156dbfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 41 92 ea fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c6241b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1b 24 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-1156dceh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 32 92 ea fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c7395420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a cb ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c73593a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 0a fc ff}
01d5h mov rcx,7ff7c79086a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 86 90 c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c e3 b0 5e}
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
0213h mov r11,7ff7c6241b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1b 24 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-1156e3dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c3 91 ea fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c6241b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1b 24 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-1156e4ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b4 91 ea fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c7395420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c ca ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c6241b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1b 24 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-1156e66h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9a 91 ea fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c7395420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a ca ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c735da50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 50 fc ff}
0290h mov rcx,7ff7c79086a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 86 90 c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 e2 b0 5e}
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
02ceh mov r11,7ff7c6241b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1b 24 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-1156ee0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 20 91 ea fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c6241b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1b 24 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-1156eefh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 11 91 ea fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c7395420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 c9 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c6241b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1b 24 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-1156f09h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f7 90 ea fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c738b9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 2f ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c7398390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 f8 ff ff}
033dh mov rcx,7ff7c79086a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 86 90 c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 e2 b0 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 dc a5 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 e1 b0 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 45 96 4f}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 78 ff fe}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 2d a8 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IOperator<Vector128<uint>> expr)
; eval_g[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 60 7a 94 c7 f7 7f 00 00 e8 3b d1 b0 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 58 7c 94 c7 f7 7f 00 00 e8 1d d1 b0 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 80 7e 94 c7 f7 7f 00 00 e8 ff d0 b0 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 08 80 94 c7 f7 7f 00 00 e8 e1 d0 b0 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb d8 1b 24 c6 f7 7f 00 00 39 09 ff 15 c8 8f ea fe 8b d8 48 8b cf 49 bb e0 1b 24 c6 f7 7f 00 00 39 09 ff 15 b9 8f ea fe 48 8b c8 e8 e1 c9 ff ff c5 f9 10 70 08 48 8b cf 49 bb e8 1b 24 c6 f7 7f 00 00 39 09 ff 15 9f 8f ea fe 48 8b c8 e8 bf c9 ff ff c5 f9 10 78 08 48 8b cf 49 bb f0 1b 24 c6 f7 7f 00 00 39 09 ff 15 85 8f ea fe 48 8b c8 e8 9d c9 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 06 89 fc ff 48 b9 18 8b 90 c7 f7 7f 00 00 e8 f7 df b0 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 98 1b 24 c6 f7 7f 00 00 39 09 ff 15 a1 8e ea fe 8b e8 48 8b cf 49 bb a0 1b 24 c6 f7 7f 00 00 39 09 ff 15 92 8e ea fe 48 8b c8 e8 fa c8 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 ab 0b fc ff 48 b9 18 8b 90 c7 f7 7f 00 00 e8 6c df b0 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb a8 1b 24 c6 f7 7f 00 00 39 09 ff 15 23 8e ea fe 8b f0 48 8b cb 49 bb b0 1b 24 c6 f7 7f 00 00 39 09 ff 15 14 8e ea fe 48 8b c8 e8 6c c8 ff ff c5 f9 10 70 08 48 8b cb 49 bb b8 1b 24 c6 f7 7f 00 00 39 09 ff 15 fa 8d ea fe 48 8b c8 e8 4a c8 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 40 53 fc ff 48 b9 18 8b 90 c7 f7 7f 00 00 e8 b1 de b0 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb c0 1b 24 c6 f7 7f 00 00 39 09 ff 15 80 8d ea fe 8b f0 48 8b cd 49 bb c8 1b 24 c6 f7 7f 00 00 39 09 ff 15 71 8d ea fe 48 8b c8 e8 b1 c7 ff ff c5 f9 10 70 08 48 8b cd 49 bb d0 1b 24 c6 f7 7f 00 00 39 09 ff 15 57 8d ea fe 48 8b c8 e8 77 2b ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 5b f5 ff ff 48 b9 18 8b 90 c7 f7 7f 00 00 e8 04 de b0 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 f3 d8 a5 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 c1 dd b0 5e 48 8b f8 48 8b ce 33 d2 e8 14 41 96 4f 48 8b d0 48 8b cf e8 f9 74 ff fe 48 8b cf e8 f1 29 a8 5e cc}
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
0026h mov rcx,7ff7c7947a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7a 94 c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b d1 b0 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c7947c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 7c 94 c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d d1 b0 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c7947e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 7e 94 c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff d0 b0 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c7948008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 80 94 c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 d0 b0 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6241bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1b 24 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-1157038h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c8 8f ea fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6241be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1b 24 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-1157047h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b9 8f ea fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c7395610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 c9 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6241be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1b 24 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-1157061h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9f 8f ea fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c7395610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf c9 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6241bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1b 24 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-115707bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 85 8f ea fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c7395610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d c9 ff ff}
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
0145h call 7ff7c73615b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 89 fc ff}
014ah mov rcx,7ff7c7908b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 8b 90 c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 df b0 5e}
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
0185h mov r11,7ff7c6241b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1b 24 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-115715fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a1 8e ea fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c6241ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1b 24 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-115716eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 8e ea fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c7395610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa c8 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c73598e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 0b fc ff}
01d5h mov rcx,7ff7c7908b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 8b 90 c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c df b0 5e}
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
0213h mov r11,7ff7c6241ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1b 24 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-11571ddh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 23 8e ea fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c6241bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1b 24 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-11571ech]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 14 8e ea fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c7395610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c c8 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c6241bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1b 24 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-1157206h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fa 8d ea fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c7395610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a c8 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c735e130h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 53 fc ff}
0290h mov rcx,7ff7c7908b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 8b 90 c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 de b0 5e}
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
02ceh mov r11,7ff7c6241bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1b 24 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-1157280h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 80 8d ea fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c6241bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1b 24 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-115728fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 8d ea fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c7395610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 c7 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c6241bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1b 24 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-11572a9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 57 8d ea fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c738b9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 2b ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c73983f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b f5 ff ff}
033dh mov rcx,7ff7c7908b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 8b 90 c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 de b0 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 d8 a5 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 dd b0 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 41 96 4f}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 74 ff fe}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 29 a8 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IOperator<Vector128<int>> expr)
; eval_g[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 60 82 94 c7 f7 7f 00 00 e8 3b cd b0 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 58 84 94 c7 f7 7f 00 00 e8 1d cd b0 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 80 86 94 c7 f7 7f 00 00 e8 ff cc b0 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 08 88 94 c7 f7 7f 00 00 e8 e1 cc b0 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 38 1c 24 c6 f7 7f 00 00 39 09 ff 15 28 8c ea fe 8b d8 48 8b cf 49 bb 40 1c 24 c6 f7 7f 00 00 39 09 ff 15 19 8c ea fe 48 8b c8 e8 e1 cb ff ff c5 f9 10 70 08 48 8b cf 49 bb 48 1c 24 c6 f7 7f 00 00 39 09 ff 15 ff 8b ea fe 48 8b c8 e8 bf cb ff ff c5 f9 10 78 08 48 8b cf 49 bb 50 1c 24 c6 f7 7f 00 00 39 09 ff 15 e5 8b ea fe 48 8b c8 e8 9d cb ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 86 85 fc ff 48 b9 88 8f 90 c7 f7 7f 00 00 e8 f7 db b0 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb f8 1b 24 c6 f7 7f 00 00 39 09 ff 15 01 8b ea fe 8b e8 48 8b cf 49 bb 00 1c 24 c6 f7 7f 00 00 39 09 ff 15 f2 8a ea fe 48 8b c8 e8 fa ca ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 eb 08 fc ff 48 b9 88 8f 90 c7 f7 7f 00 00 e8 6c db b0 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 08 1c 24 c6 f7 7f 00 00 39 09 ff 15 83 8a ea fe 8b f0 48 8b cb 49 bb 10 1c 24 c6 f7 7f 00 00 39 09 ff 15 74 8a ea fe 48 8b c8 e8 6c ca ff ff c5 f9 10 70 08 48 8b cb 49 bb 18 1c 24 c6 f7 7f 00 00 39 09 ff 15 5a 8a ea fe 48 8b c8 e8 4a ca ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 20 52 fc ff 48 b9 88 8f 90 c7 f7 7f 00 00 e8 b1 da b0 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 20 1c 24 c6 f7 7f 00 00 39 09 ff 15 e0 89 ea fe 8b f0 48 8b cd 49 bb 28 1c 24 c6 f7 7f 00 00 39 09 ff 15 d1 89 ea fe 48 8b c8 e8 b1 c9 ff ff c5 f9 10 70 08 48 8b cd 49 bb 30 1c 24 c6 f7 7f 00 00 39 09 ff 15 b7 89 ea fe 48 8b c8 e8 77 27 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 c3 f1 ff ff 48 b9 88 8f 90 c7 f7 7f 00 00 e8 04 da b0 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 f3 d4 a5 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 c1 d9 b0 5e 48 8b f8 48 8b ce 33 d2 e8 14 3d 96 4f 48 8b d0 48 8b cf e8 f9 70 ff fe 48 8b cf e8 f1 25 a8 5e cc}
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
0026h mov rcx,7ff7c7948260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 82 94 c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b cd b0 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c7948458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 84 94 c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d cd b0 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c7948680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 86 94 c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff cc b0 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c7948808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 88 94 c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 cc b0 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6241c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1c 24 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-11573d8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 28 8c ea fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6241c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1c 24 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-11573e7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 19 8c ea fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c7395c10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 cb ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6241c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1c 24 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-1157401h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ff 8b ea fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c7395c10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf cb ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6241c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1c 24 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-115741bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e5 8b ea fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c7395c10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d cb ff ff}
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
0145h call 7ff7c7361630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 85 fc ff}
014ah mov rcx,7ff7c7908f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 8f 90 c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 db b0 5e}
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
0185h mov r11,7ff7c6241bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1b 24 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-11574ffh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 01 8b ea fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c6241c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1c 24 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-115750eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f2 8a ea fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c7395c10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa ca ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c7359a20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 08 fc ff}
01d5h mov rcx,7ff7c7908f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 8f 90 c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c db b0 5e}
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
0213h mov r11,7ff7c6241c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1c 24 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-115757dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 83 8a ea fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c6241c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1c 24 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-115758ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 74 8a ea fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c7395c10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c ca ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c6241c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1c 24 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-11575a6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5a 8a ea fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c7395c10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a ca ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c735e410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 52 fc ff}
0290h mov rcx,7ff7c7908f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 8f 90 c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 da b0 5e}
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
02ceh mov r11,7ff7c6241c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1c 24 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-1157620h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e0 89 ea fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c6241c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1c 24 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-115762fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d1 89 ea fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c7395c10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 c9 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c6241c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1c 24 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-1157649h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b7 89 ea fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c738b9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 27 ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c7398460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 f1 ff ff}
033dh mov rcx,7ff7c7908f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 8f 90 c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 da b0 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 d4 a5 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 d9 b0 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 3d 96 4f}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 70 ff fe}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 25 a8 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IOperator<Vector128<ulong>> expr)
; eval_g[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 60 8a 94 c7 f7 7f 00 00 e8 3b c9 b0 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 58 8c 94 c7 f7 7f 00 00 e8 1d c9 b0 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 80 8e 94 c7 f7 7f 00 00 e8 ff c8 b0 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 08 90 94 c7 f7 7f 00 00 e8 e1 c8 b0 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 98 1c 24 c6 f7 7f 00 00 39 09 ff 15 88 88 ea fe 8b d8 48 8b cf 49 bb a0 1c 24 c6 f7 7f 00 00 39 09 ff 15 79 88 ea fe 48 8b c8 e8 d1 c9 ff ff c5 f9 10 70 08 48 8b cf 49 bb a8 1c 24 c6 f7 7f 00 00 39 09 ff 15 5f 88 ea fe 48 8b c8 e8 af c9 ff ff c5 f9 10 78 08 48 8b cf 49 bb b0 1c 24 c6 f7 7f 00 00 39 09 ff 15 45 88 ea fe 48 8b c8 e8 8d c9 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 06 82 fc ff 48 b9 a8 f1 90 c7 f7 7f 00 00 e8 f7 d7 b0 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 58 1c 24 c6 f7 7f 00 00 39 09 ff 15 61 87 ea fe 8b e8 48 8b cf 49 bb 60 1c 24 c6 f7 7f 00 00 39 09 ff 15 52 87 ea fe 48 8b c8 e8 ea c8 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 2b 06 fc ff 48 b9 a8 f1 90 c7 f7 7f 00 00 e8 6c d7 b0 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 68 1c 24 c6 f7 7f 00 00 39 09 ff 15 e3 86 ea fe 8b f0 48 8b cb 49 bb 70 1c 24 c6 f7 7f 00 00 39 09 ff 15 d4 86 ea fe 48 8b c8 e8 5c c8 ff ff c5 f9 10 70 08 48 8b cb 49 bb 78 1c 24 c6 f7 7f 00 00 39 09 ff 15 ba 86 ea fe 48 8b c8 e8 3a c8 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 00 51 fc ff 48 b9 a8 f1 90 c7 f7 7f 00 00 e8 b1 d6 b0 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 80 1c 24 c6 f7 7f 00 00 39 09 ff 15 40 86 ea fe 8b f0 48 8b cd 49 bb 88 1c 24 c6 f7 7f 00 00 39 09 ff 15 31 86 ea fe 48 8b c8 e8 a1 c7 ff ff c5 f9 10 70 08 48 8b cd 49 bb 90 1c 24 c6 f7 7f 00 00 39 09 ff 15 17 86 ea fe 48 8b c8 e8 77 23 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 2b ee ff ff 48 b9 a8 f1 90 c7 f7 7f 00 00 e8 04 d6 b0 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 f3 d0 a5 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 c1 d5 b0 5e 48 8b f8 48 8b ce 33 d2 e8 14 39 96 4f 48 8b d0 48 8b cf e8 f9 6c ff fe 48 8b cf e8 f1 21 a8 5e cc}
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
0026h mov rcx,7ff7c7948a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8a 94 c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b c9 b0 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c7948c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 8c 94 c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d c9 b0 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c7948e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 8e 94 c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff c8 b0 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c7949008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 90 94 c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 c8 b0 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6241c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1c 24 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-1157778h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 88 88 ea fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6241ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1c 24 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-1157787h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 88 ea fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c7395e00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 c9 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6241ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1c 24 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-11577a1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5f 88 ea fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c7395e00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af c9 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6241cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1c 24 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-11577bbh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 45 88 ea fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c7395e00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d c9 ff ff}
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
0145h call 7ff7c73616b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 82 fc ff}
014ah mov rcx,7ff7c790f1a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f1 90 c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 d7 b0 5e}
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
0185h mov r11,7ff7c6241c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1c 24 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-115789fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 61 87 ea fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c6241c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1c 24 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-11578aeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 52 87 ea fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c7395e00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea c8 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c7359b60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 06 fc ff}
01d5h mov rcx,7ff7c790f1a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f1 90 c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c d7 b0 5e}
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
0213h mov r11,7ff7c6241c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1c 24 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-115791dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e3 86 ea fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c6241c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1c 24 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-115792ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d4 86 ea fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c7395e00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c c8 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c6241c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1c 24 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-1157946h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ba 86 ea fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c7395e00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a c8 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c735e6f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 51 fc ff}
0290h mov rcx,7ff7c790f1a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f1 90 c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 d6 b0 5e}
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
02ceh mov r11,7ff7c6241c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1c 24 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-11579c0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 40 86 ea fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c6241c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1c 24 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-11579cfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 31 86 ea fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c7395e00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 c7 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c6241c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1c 24 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-11579e9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 17 86 ea fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c738b9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 23 ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c73984c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b ee ff ff}
033dh mov rcx,7ff7c790f1a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f1 90 c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 d6 b0 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 d0 a5 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 d5 b0 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 39 96 4f}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 6c ff fe}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 21 a8 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IOperator<Vector128<long>> expr)
; eval_g[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 60 92 94 c7 f7 7f 00 00 e8 3b c5 b0 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 58 94 94 c7 f7 7f 00 00 e8 1d c5 b0 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 80 96 94 c7 f7 7f 00 00 e8 ff c4 b0 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 08 98 94 c7 f7 7f 00 00 e8 e1 c4 b0 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb f8 1c 24 c6 f7 7f 00 00 39 09 ff 15 e8 84 ea fe 8b d8 48 8b cf 49 bb 00 1d 24 c6 f7 7f 00 00 39 09 ff 15 d9 84 ea fe 48 8b c8 e8 c1 c7 ff ff c5 f9 10 70 08 48 8b cf 49 bb 08 1d 24 c6 f7 7f 00 00 39 09 ff 15 bf 84 ea fe 48 8b c8 e8 9f c7 ff ff c5 f9 10 78 08 48 8b cf 49 bb 10 1d 24 c6 f7 7f 00 00 39 09 ff 15 a5 84 ea fe 48 8b c8 e8 7d c7 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 86 7e fc ff 48 b9 f8 93 90 c7 f7 7f 00 00 e8 f7 d3 b0 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb b8 1c 24 c6 f7 7f 00 00 39 09 ff 15 c1 83 ea fe 8b e8 48 8b cf 49 bb c0 1c 24 c6 f7 7f 00 00 39 09 ff 15 b2 83 ea fe 48 8b c8 e8 da c6 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 6b 03 fc ff 48 b9 f8 93 90 c7 f7 7f 00 00 e8 6c d3 b0 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb c8 1c 24 c6 f7 7f 00 00 39 09 ff 15 43 83 ea fe 8b f0 48 8b cb 49 bb d0 1c 24 c6 f7 7f 00 00 39 09 ff 15 34 83 ea fe 48 8b c8 e8 4c c6 ff ff c5 f9 10 70 08 48 8b cb 49 bb d8 1c 24 c6 f7 7f 00 00 39 09 ff 15 1a 83 ea fe 48 8b c8 e8 2a c6 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 e0 4f fc ff 48 b9 f8 93 90 c7 f7 7f 00 00 e8 b1 d2 b0 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb e0 1c 24 c6 f7 7f 00 00 39 09 ff 15 a0 82 ea fe 8b f0 48 8b cd 49 bb e8 1c 24 c6 f7 7f 00 00 39 09 ff 15 91 82 ea fe 48 8b c8 e8 91 c5 ff ff c5 f9 10 70 08 48 8b cd 49 bb f0 1c 24 c6 f7 7f 00 00 39 09 ff 15 77 82 ea fe 48 8b c8 e8 77 1f ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 93 ea ff ff 48 b9 f8 93 90 c7 f7 7f 00 00 e8 04 d2 b0 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 f3 cc a5 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 c1 d1 b0 5e 48 8b f8 48 8b ce 33 d2 e8 14 35 96 4f 48 8b d0 48 8b cf e8 f9 68 ff fe 48 8b cf e8 f1 1d a8 5e cc}
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
0026h mov rcx,7ff7c7949260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 92 94 c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b c5 b0 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c7949458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 94 94 c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d c5 b0 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c7949680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 96 94 c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff c4 b0 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c7949808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 98 94 c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 c4 b0 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6241cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1c 24 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-1157b18h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e8 84 ea fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6241d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1d 24 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-1157b27h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d9 84 ea fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c7395ff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 c7 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6241d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1d 24 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-1157b41h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bf 84 ea fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c7395ff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f c7 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6241d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1d 24 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-1157b5bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a5 84 ea fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c7395ff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d c7 ff ff}
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
0145h call 7ff7c7361730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 7e fc ff}
014ah mov rcx,7ff7c79093f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 93 90 c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 d3 b0 5e}
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
0185h mov r11,7ff7c6241cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1c 24 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-1157c3fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c1 83 ea fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c6241cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1c 24 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-1157c4eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b2 83 ea fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c7395ff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da c6 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c7359ca0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 03 fc ff}
01d5h mov rcx,7ff7c79093f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 93 90 c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c d3 b0 5e}
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
0213h mov r11,7ff7c6241cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1c 24 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-1157cbdh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 43 83 ea fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c6241cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1c 24 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-1157ccch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 34 83 ea fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c7395ff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c c6 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c6241cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1c 24 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-1157ce6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1a 83 ea fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c7395ff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a c6 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c735e9d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 4f fc ff}
0290h mov rcx,7ff7c79093f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 93 90 c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 d2 b0 5e}
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
02ceh mov r11,7ff7c6241ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1c 24 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-1157d60h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a0 82 ea fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c6241ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1c 24 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-1157d6fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 91 82 ea fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c7395ff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 c5 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c6241cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1c 24 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-1157d89h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 77 82 ea fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c738b9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 1f ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c7398530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 ea ff ff}
033dh mov rcx,7ff7c79093f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 93 90 c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 d2 b0 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 cc a5 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 d1 b0 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 35 96 4f}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 68 ff fe}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 1d a8 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IOperator<Vector256<byte>> expr)
; eval_g[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 18 a0 94 c7 f7 7f 00 00 e8 29 c1 b0 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 10 a2 94 c7 f7 7f 00 00 e8 0b c1 b0 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 38 a4 94 c7 f7 7f 00 00 e8 ed c0 b0 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 c0 a5 94 c7 f7 7f 00 00 e8 cf c0 b0 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 58 1d 24 c6 f7 7f 00 00 39 09 ff 15 36 81 ea fe 8b d8 48 8b cf 49 bb 60 1d 24 c6 f7 7f 00 00 39 09 ff 15 27 81 ea fe 48 8b c8 e8 9f c5 ff ff c5 fd 10 70 08 48 8b cf 49 bb 68 1d 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 07 81 ea fe 48 8b c8 e8 77 c5 ff ff c5 7d 10 40 08 48 8b cf 49 bb 70 1d 24 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 e7 80 ea fe 48 8b c8 e8 4f c5 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 d9 7a fc ff 48 b9 80 9e 90 c7 f7 7f 00 00 e8 ca cf b0 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 18 1d 24 c6 f7 7f 00 00 39 09 ff 15 dc 7f ea fe 8b e8 48 8b cf 49 bb 20 1d 24 c6 f7 7f 00 00 39 09 ff 15 cd 7f ea fe 48 8b c8 e8 85 c4 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 66 00 fc ff 48 b9 80 9e 90 c7 f7 7f 00 00 e8 27 cf b0 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 28 1d 24 c6 f7 7f 00 00 39 09 ff 15 49 7f ea fe 8b f0 48 8b cb 49 bb 30 1d 24 c6 f7 7f 00 00 39 09 ff 15 3a 7f ea fe 48 8b c8 e8 e2 c3 ff ff c5 fd 10 70 08 48 8b cb 49 bb 38 1d 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 1a 7f ea fe 48 8b c8 e8 ba c3 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 5a 52 fc ff 48 b9 80 9e 90 c7 f7 7f 00 00 e8 4b ce b0 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 40 1d 24 c6 f7 7f 00 00 39 09 ff 15 85 7e ea fe 8b f0 48 8b cd 49 bb 48 1d 24 c6 f7 7f 00 00 39 09 ff 15 76 7e ea fe 48 8b c8 e8 06 c3 ff ff c5 fd 10 70 08 48 8b cd 49 bb 50 1d 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 56 7e ea fe 48 8b c8 e8 f6 1a ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 d9 e7 ff ff 48 b9 80 9e 90 c7 f7 7f 00 00 e8 7a cd b0 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 51 c8 a5 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 1f cd b0 5e 48 8b f8 48 8b ce 33 d2 e8 72 30 96 4f 48 8b d0 48 8b cf e8 57 64 ff fe 48 8b cf e8 4f 19 a8 5e cc}
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
0038h mov rcx,7ff7c794a018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 a0 94 c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 c1 b0 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c794a210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a2 94 c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b c1 b0 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c794a438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 a4 94 c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed c0 b0 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c794a5c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a5 94 c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf c0 b0 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6241d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1d 24 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-1157ecah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 36 81 ea fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6241d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1d 24 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-1157ed9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 27 81 ea fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c73961e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f c5 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6241d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1d 24 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-1157ef9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 07 81 ea fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c73961e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 c5 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6241d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1d 24 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-1157f19h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e7 80 ea fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c73961e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f c5 ff ff}
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
0172h call 7ff7c73617b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 7a fc ff}
0177h mov rcx,7ff7c7909e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9e 90 c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca cf b0 5e}
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
01cah mov r11,7ff7c6241d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1d 24 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-1158024h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 dc 7f ea fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6241d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1d 24 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-1158033h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 cd 7f ea fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c73961e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 c4 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c7359de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 00 fc ff}
021ah mov rcx,7ff7c7909e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9e 90 c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 cf b0 5e}
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
026dh mov r11,7ff7c6241d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1d 24 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-11580b7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 7f ea fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6241d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1d 24 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-11580c6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3a 7f ea fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c73961e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 c3 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6241d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1d 24 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-11580e6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1a 7f ea fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c73961e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba c3 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c735f0b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 52 fc ff}
02f6h mov rcx,7ff7c7909e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9e 90 c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b ce b0 5e}
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
0349h mov r11,7ff7c6241d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1d 24 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-115817bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 85 7e ea fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6241d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1d 24 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-115818ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 76 7e ea fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c73961e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 c3 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6241d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1d 24 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-11581aah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 56 7e ea fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c738b9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 1a ff ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c7398700h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 e7 ff ff}
03c7h mov rcx,7ff7c7909e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9e 90 c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a cd b0 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 c8 a5 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f cd b0 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 30 96 4f}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 64 ff fe}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 19 a8 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IOperator<Vector256<sbyte>> expr)
; eval_g[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 98 b1 94 c7 f7 7f 00 00 e8 79 b8 b0 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 90 b3 94 c7 f7 7f 00 00 e8 5b b8 b0 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 b8 b5 94 c7 f7 7f 00 00 e8 3d b8 b0 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 40 b7 94 c7 f7 7f 00 00 e8 1f b8 b0 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb b8 1d 24 c6 f7 7f 00 00 39 09 ff 15 e6 78 ea fe 8b d8 48 8b cf 49 bb c0 1d 24 c6 f7 7f 00 00 39 09 ff 15 d7 78 ea fe 48 8b c8 e8 1f bf ff ff c5 fd 10 70 08 48 8b cf 49 bb c8 1d 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 b7 78 ea fe 48 8b c8 e8 f7 be ff ff c5 7d 10 40 08 48 8b cf 49 bb d0 1d 24 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 97 78 ea fe 48 8b c8 e8 cf be ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 a9 72 fc ff 48 b9 50 a3 90 c7 f7 7f 00 00 e8 1a c7 b0 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 78 1d 24 c6 f7 7f 00 00 39 09 ff 15 8c 77 ea fe 8b e8 48 8b cf 49 bb 80 1d 24 c6 f7 7f 00 00 39 09 ff 15 7d 77 ea fe 48 8b c8 e8 05 be ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 06 f9 fb ff 48 b9 50 a3 90 c7 f7 7f 00 00 e8 77 c6 b0 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 88 1d 24 c6 f7 7f 00 00 39 09 ff 15 f9 76 ea fe 8b f0 48 8b cb 49 bb 90 1d 24 c6 f7 7f 00 00 39 09 ff 15 ea 76 ea fe 48 8b c8 e8 62 bd ff ff c5 fd 10 70 08 48 8b cb 49 bb 98 1d 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 ca 76 ea fe 48 8b c8 e8 3a bd ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 8a 4c fc ff 48 b9 50 a3 90 c7 f7 7f 00 00 e8 9b c5 b0 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb a0 1d 24 c6 f7 7f 00 00 39 09 ff 15 35 76 ea fe 8b f0 48 8b cd 49 bb a8 1d 24 c6 f7 7f 00 00 39 09 ff 15 26 76 ea fe 48 8b c8 e8 86 bc ff ff c5 fd 10 70 08 48 8b cd 49 bb b0 1d 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 06 76 ea fe 48 8b c8 e8 46 12 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 79 f8 ff ff 48 b9 50 a3 90 c7 f7 7f 00 00 e8 ca c4 b0 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 a1 bf a5 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 6f c4 b0 5e 48 8b f8 48 8b ce 33 d2 e8 c2 27 96 4f 48 8b d0 48 8b cf e8 a7 5b ff fe 48 8b cf e8 9f 10 a8 5e cc}
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
0038h mov rcx,7ff7c794b198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b1 94 c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 b8 b0 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c794b390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 b3 94 c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b b8 b0 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c794b5b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 b5 94 c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d b8 b0 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c794b740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b7 94 c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f b8 b0 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6241db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1d 24 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-115871ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e6 78 ea fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6241dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1d 24 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-1158729h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d7 78 ea fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c7396410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f bf ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6241dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1d 24 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-1158749h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b7 78 ea fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c7396410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 be ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6241dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1d 24 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-1158769h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 97 78 ea fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c7396410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf be ff ff}
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
0172h call 7ff7c7361830h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 72 fc ff}
0177h mov rcx,7ff7c790a350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a3 90 c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a c7 b0 5e}
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
01cah mov r11,7ff7c6241d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1d 24 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-1158874h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8c 77 ea fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6241d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1d 24 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-1158883h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7d 77 ea fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c7396410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 be ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c7359f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 f9 fb ff}
021ah mov rcx,7ff7c790a350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a3 90 c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 c6 b0 5e}
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
026dh mov r11,7ff7c6241d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1d 24 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-1158907h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f9 76 ea fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6241d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1d 24 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-1158916h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ea 76 ea fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c7396410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 bd ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6241d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1d 24 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-1158936h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ca 76 ea fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c7396410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a bd ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c735f390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 4c fc ff}
02f6h mov rcx,7ff7c790a350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a3 90 c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b c5 b0 5e}
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
0349h mov r11,7ff7c6241da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1d 24 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-11589cbh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 35 76 ea fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6241da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1d 24 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-11589dah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 26 76 ea fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c7396410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 bc ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6241db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1d 24 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-11589fah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 06 76 ea fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c738b9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 12 ff ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c739a050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 f8 ff ff}
03c7h mov rcx,7ff7c790a350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a3 90 c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca c4 b0 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 bf a5 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f c4 b0 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 27 96 4f}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 5b ff fe}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 10 a8 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IOperator<Vector256<ushort>> expr)
; eval_g[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 98 b9 94 c7 f7 7f 00 00 e8 c9 b3 b0 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 90 bb 94 c7 f7 7f 00 00 e8 ab b3 b0 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 b8 bd 94 c7 f7 7f 00 00 e8 8d b3 b0 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 40 bf 94 c7 f7 7f 00 00 e8 6f b3 b0 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 18 1e 24 c6 f7 7f 00 00 39 09 ff 15 96 74 ea fe 8b d8 48 8b cf 49 bb 20 1e 24 c6 f7 7f 00 00 39 09 ff 15 87 74 ea fe 48 8b c8 e8 9f bc ff ff c5 fd 10 70 08 48 8b cf 49 bb 28 1e 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 67 74 ea fe 48 8b c8 e8 77 bc ff ff c5 7d 10 40 08 48 8b cf 49 bb 30 1e 24 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 47 74 ea fe 48 8b c8 e8 4f bc ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 79 6e fc ff 48 b9 c0 a7 90 c7 f7 7f 00 00 e8 6a c2 b0 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb d8 1d 24 c6 f7 7f 00 00 39 09 ff 15 3c 73 ea fe 8b e8 48 8b cf 49 bb e0 1d 24 c6 f7 7f 00 00 39 09 ff 15 2d 73 ea fe 48 8b c8 e8 85 bb ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 a6 f5 fb ff 48 b9 c0 a7 90 c7 f7 7f 00 00 e8 c7 c1 b0 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb e8 1d 24 c6 f7 7f 00 00 39 09 ff 15 a9 72 ea fe 8b f0 48 8b cb 49 bb f0 1d 24 c6 f7 7f 00 00 39 09 ff 15 9a 72 ea fe 48 8b c8 e8 e2 ba ff ff c5 fd 10 70 08 48 8b cb 49 bb f8 1d 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 7a 72 ea fe 48 8b c8 e8 ba ba ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 ba 4e fc ff 48 b9 c0 a7 90 c7 f7 7f 00 00 e8 eb c0 b0 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 00 1e 24 c6 f7 7f 00 00 39 09 ff 15 e5 71 ea fe 8b f0 48 8b cd 49 bb 08 1e 24 c6 f7 7f 00 00 39 09 ff 15 d6 71 ea fe 48 8b c8 e8 06 ba ff ff c5 fd 10 70 08 48 8b cd 49 bb 10 1e 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 b6 71 ea fe 48 8b c8 e8 96 0d ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 31 f4 ff ff 48 b9 c0 a7 90 c7 f7 7f 00 00 e8 1a c0 b0 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 f1 ba a5 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 bf bf b0 5e 48 8b f8 48 8b ce 33 d2 e8 12 23 96 4f 48 8b d0 48 8b cf e8 f7 56 ff fe 48 8b cf e8 ef 0b a8 5e cc}
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
0038h mov rcx,7ff7c794b998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b9 94 c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 b3 b0 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c794bb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 bb 94 c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab b3 b0 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c794bdb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 bd 94 c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d b3 b0 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c794bf40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 bf 94 c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f b3 b0 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6241e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1e 24 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-1158b6ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 96 74 ea fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6241e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1e 24 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-1158b79h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 87 74 ea fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c7396640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f bc ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6241e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1e 24 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-1158b99h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 67 74 ea fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c7396640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 bc ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6241e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1e 24 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-1158bb9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 47 74 ea fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c7396640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f bc ff ff}
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
0172h call 7ff7c73618b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 6e fc ff}
0177h mov rcx,7ff7c790a7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a7 90 c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a c2 b0 5e}
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
01cah mov r11,7ff7c6241dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1d 24 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-1158cc4h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3c 73 ea fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6241de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1d 24 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-1158cd3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2d 73 ea fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c7396640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 bb ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c735a080h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 f5 fb ff}
021ah mov rcx,7ff7c790a7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a7 90 c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 c1 b0 5e}
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
026dh mov r11,7ff7c6241de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1d 24 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-1158d57h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a9 72 ea fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6241df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1d 24 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-1158d66h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9a 72 ea fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c7396640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 ba ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6241df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1d 24 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-1158d86h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7a 72 ea fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c7396640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba ba ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c735fa70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 4e fc ff}
02f6h mov rcx,7ff7c790a7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a7 90 c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb c0 b0 5e}
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
0349h mov r11,7ff7c6241e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1e 24 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-1158e1bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e5 71 ea fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6241e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1e 24 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-1158e2ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d6 71 ea fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c7396640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 ba ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6241e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1e 24 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-1158e4ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b6 71 ea fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c738b9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 0d ff ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c739a0b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 f4 ff ff}
03c7h mov rcx,7ff7c790a7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a7 90 c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a c0 b0 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 ba a5 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf bf b0 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 23 96 4f}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 56 ff fe}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 0b a8 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IOperator<Vector256<short>> expr)
; eval_g[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 98 c1 94 c7 f7 7f 00 00 e8 19 af b0 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 90 c3 94 c7 f7 7f 00 00 e8 fb ae b0 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 b8 c5 94 c7 f7 7f 00 00 e8 dd ae b0 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 40 c7 94 c7 f7 7f 00 00 e8 bf ae b0 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 78 1e 24 c6 f7 7f 00 00 39 09 ff 15 46 70 ea fe 8b d8 48 8b cf 49 bb 80 1e 24 c6 f7 7f 00 00 39 09 ff 15 37 70 ea fe 48 8b c8 e8 1f ba ff ff c5 fd 10 70 08 48 8b cf 49 bb 88 1e 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 17 70 ea fe 48 8b c8 e8 f7 b9 ff ff c5 7d 10 40 08 48 8b cf 49 bb 90 1e 24 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 f7 6f ea fe 48 8b c8 e8 cf b9 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 49 6a fc ff 48 b9 30 ac 90 c7 f7 7f 00 00 e8 ba bd b0 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 38 1e 24 c6 f7 7f 00 00 39 09 ff 15 ec 6e ea fe 8b e8 48 8b cf 49 bb 40 1e 24 c6 f7 7f 00 00 39 09 ff 15 dd 6e ea fe 48 8b c8 e8 05 b9 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 46 f2 fb ff 48 b9 30 ac 90 c7 f7 7f 00 00 e8 17 bd b0 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 48 1e 24 c6 f7 7f 00 00 39 09 ff 15 59 6e ea fe 8b f0 48 8b cb 49 bb 50 1e 24 c6 f7 7f 00 00 39 09 ff 15 4a 6e ea fe 48 8b c8 e8 62 b8 ff ff c5 fd 10 70 08 48 8b cb 49 bb 58 1e 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 2a 6e ea fe 48 8b c8 e8 3a b8 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 ea 4c fc ff 48 b9 30 ac 90 c7 f7 7f 00 00 e8 3b bc b0 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 60 1e 24 c6 f7 7f 00 00 39 09 ff 15 95 6d ea fe 8b f0 48 8b cd 49 bb 68 1e 24 c6 f7 7f 00 00 39 09 ff 15 86 6d ea fe 48 8b c8 e8 86 b7 ff ff c5 fd 10 70 08 48 8b cd 49 bb 70 1e 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 66 6d ea fe 48 8b c8 e8 e6 08 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 e9 ef ff ff 48 b9 30 ac 90 c7 f7 7f 00 00 e8 6a bb b0 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 41 b6 a5 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 0f bb b0 5e 48 8b f8 48 8b ce 33 d2 e8 62 1e 96 4f 48 8b d0 48 8b cf e8 47 52 ff fe 48 8b cf e8 3f 07 a8 5e cc}
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
0038h mov rcx,7ff7c794c198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c1 94 c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 af b0 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c794c390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 c3 94 c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb ae b0 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c794c5b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c5 94 c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd ae b0 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c794c740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 c7 94 c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf ae b0 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6241e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1e 24 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-1158fbah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 46 70 ea fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6241e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1e 24 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-1158fc9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 37 70 ea fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c7396870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f ba ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6241e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1e 24 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-1158fe9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 17 70 ea fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c7396870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 b9 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6241e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1e 24 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-1159009h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f7 6f ea fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c7396870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf b9 ff ff}
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
0172h call 7ff7c7361930h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 6a fc ff}
0177h mov rcx,7ff7c790ac30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ac 90 c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba bd b0 5e}
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
01cah mov r11,7ff7c6241e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1e 24 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-1159114h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ec 6e ea fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6241e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1e 24 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-1159123h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 dd 6e ea fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c7396870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 b9 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c735a1d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 f2 fb ff}
021ah mov rcx,7ff7c790ac30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ac 90 c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 bd b0 5e}
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
026dh mov r11,7ff7c6241e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1e 24 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-11591a7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 59 6e ea fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6241e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1e 24 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-11591b6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4a 6e ea fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c7396870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 b8 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6241e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1e 24 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-11591d6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2a 6e ea fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c7396870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a b8 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c735fd50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 4c fc ff}
02f6h mov rcx,7ff7c790ac30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ac 90 c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b bc b0 5e}
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
0349h mov r11,7ff7c6241e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1e 24 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-115926bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 95 6d ea fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6241e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1e 24 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-115927ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 86 6d ea fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c7396870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 b7 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6241e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1e 24 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-115929ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 66 6d ea fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c738b9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 08 ff ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c739a120h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 ef ff ff}
03c7h mov rcx,7ff7c790ac30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ac 90 c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a bb b0 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 b6 a5 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f bb b0 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 1e 96 4f}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 52 ff fe}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 07 a8 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IOperator<Vector256<uint>> expr)
; eval_g[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 98 c9 94 c7 f7 7f 00 00 e8 69 aa b0 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 90 cb 94 c7 f7 7f 00 00 e8 4b aa b0 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 b8 cd 94 c7 f7 7f 00 00 e8 2d aa b0 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 40 cf 94 c7 f7 7f 00 00 e8 0f aa b0 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb d8 1e 24 c6 f7 7f 00 00 39 09 ff 15 f6 6b ea fe 8b d8 48 8b cf 49 bb e0 1e 24 c6 f7 7f 00 00 39 09 ff 15 e7 6b ea fe 48 8b c8 e8 9f b7 ff ff c5 fd 10 70 08 48 8b cf 49 bb e8 1e 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 c7 6b ea fe 48 8b c8 e8 77 b7 ff ff c5 7d 10 40 08 48 8b cf 49 bb f0 1e 24 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 a7 6b ea fe 48 8b c8 e8 4f b7 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 19 66 fc ff 48 b9 a0 b0 90 c7 f7 7f 00 00 e8 0a b9 b0 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 98 1e 24 c6 f7 7f 00 00 39 09 ff 15 9c 6a ea fe 8b e8 48 8b cf 49 bb a0 1e 24 c6 f7 7f 00 00 39 09 ff 15 8d 6a ea fe 48 8b c8 e8 85 b6 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 e6 ee fb ff 48 b9 a0 b0 90 c7 f7 7f 00 00 e8 67 b8 b0 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb a8 1e 24 c6 f7 7f 00 00 39 09 ff 15 09 6a ea fe 8b f0 48 8b cb 49 bb b0 1e 24 c6 f7 7f 00 00 39 09 ff 15 fa 69 ea fe 48 8b c8 e8 e2 b5 ff ff c5 fd 10 70 08 48 8b cb 49 bb b8 1e 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 da 69 ea fe 48 8b c8 e8 ba b5 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 1a 4b fc ff 48 b9 a0 b0 90 c7 f7 7f 00 00 e8 8b b7 b0 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb c0 1e 24 c6 f7 7f 00 00 39 09 ff 15 45 69 ea fe 8b f0 48 8b cd 49 bb c8 1e 24 c6 f7 7f 00 00 39 09 ff 15 36 69 ea fe 48 8b c8 e8 06 b5 ff ff c5 fd 10 70 08 48 8b cd 49 bb d0 1e 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 16 69 ea fe 48 8b c8 e8 36 04 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 a1 eb ff ff 48 b9 a0 b0 90 c7 f7 7f 00 00 e8 ba b6 b0 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 91 b1 a5 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 5f b6 b0 5e 48 8b f8 48 8b ce 33 d2 e8 b2 19 96 4f 48 8b d0 48 8b cf e8 97 4d ff fe 48 8b cf e8 8f 02 a8 5e cc}
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
0038h mov rcx,7ff7c794c998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c9 94 c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 aa b0 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c794cb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 cb 94 c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b aa b0 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c794cdb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 cd 94 c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d aa b0 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c794cf40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 cf 94 c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f aa b0 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6241ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1e 24 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-115940ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f6 6b ea fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6241ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1e 24 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-1159419h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e7 6b ea fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c7396aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f b7 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6241ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1e 24 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-1159439h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c7 6b ea fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c7396aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 b7 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6241ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1e 24 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-1159459h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a7 6b ea fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c7396aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f b7 ff ff}
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
0172h call 7ff7c73619b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 66 fc ff}
0177h mov rcx,7ff7c790b0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 b0 90 c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a b9 b0 5e}
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
01cah mov r11,7ff7c6241e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1e 24 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-1159564h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9c 6a ea fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6241ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1e 24 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-1159573h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8d 6a ea fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c7396aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 b6 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c735a320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 ee fb ff}
021ah mov rcx,7ff7c790b0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 b0 90 c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 b8 b0 5e}
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
026dh mov r11,7ff7c6241ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1e 24 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-11595f7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 09 6a ea fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6241eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1e 24 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-1159606h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fa 69 ea fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c7396aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 b5 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6241eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1e 24 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-1159626h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 da 69 ea fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c7396aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba b5 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c7360030h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 4b fc ff}
02f6h mov rcx,7ff7c790b0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 b0 90 c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b b7 b0 5e}
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
0349h mov r11,7ff7c6241ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1e 24 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-11596bbh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 45 69 ea fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6241ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1e 24 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-11596cah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 36 69 ea fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c7396aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 b5 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6241ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1e 24 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-11596eah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 16 69 ea fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c738b9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 04 ff ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c739a188h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 eb ff ff}
03c7h mov rcx,7ff7c790b0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 b0 90 c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba b6 b0 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 b1 a5 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f b6 b0 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 19 96 4f}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 4d ff fe}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 02 a8 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IOperator<Vector256<int>> expr)
; eval_g[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 98 d1 94 c7 f7 7f 00 00 e8 b9 a5 b0 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 90 d3 94 c7 f7 7f 00 00 e8 9b a5 b0 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 b8 d5 94 c7 f7 7f 00 00 e8 7d a5 b0 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 40 d7 94 c7 f7 7f 00 00 e8 5f a5 b0 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 38 1f 24 c6 f7 7f 00 00 39 09 ff 15 a6 67 ea fe 8b d8 48 8b cf 49 bb 40 1f 24 c6 f7 7f 00 00 39 09 ff 15 97 67 ea fe 48 8b c8 e8 1f b9 ff ff c5 fd 10 70 08 48 8b cf 49 bb 48 1f 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 77 67 ea fe 48 8b c8 e8 f7 b8 ff ff c5 7d 10 40 08 48 8b cf 49 bb 50 1f 24 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 57 67 ea fe 48 8b c8 e8 cf b8 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 e9 61 fc ff 48 b9 10 b5 90 c7 f7 7f 00 00 e8 5a b4 b0 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb f8 1e 24 c6 f7 7f 00 00 39 09 ff 15 4c 66 ea fe 8b e8 48 8b cf 49 bb 00 1f 24 c6 f7 7f 00 00 39 09 ff 15 3d 66 ea fe 48 8b c8 e8 05 b8 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 86 eb fb ff 48 b9 10 b5 90 c7 f7 7f 00 00 e8 b7 b3 b0 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 08 1f 24 c6 f7 7f 00 00 39 09 ff 15 b9 65 ea fe 8b f0 48 8b cb 49 bb 10 1f 24 c6 f7 7f 00 00 39 09 ff 15 aa 65 ea fe 48 8b c8 e8 62 b7 ff ff c5 fd 10 70 08 48 8b cb 49 bb 18 1f 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 8a 65 ea fe 48 8b c8 e8 3a b7 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 4a 4d fc ff 48 b9 10 b5 90 c7 f7 7f 00 00 e8 db b2 b0 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 20 1f 24 c6 f7 7f 00 00 39 09 ff 15 f5 64 ea fe 8b f0 48 8b cd 49 bb 28 1f 24 c6 f7 7f 00 00 39 09 ff 15 e6 64 ea fe 48 8b c8 e8 86 b6 ff ff c5 fd 10 70 08 48 8b cd 49 bb 30 1f 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 c6 64 ea fe 48 8b c8 e8 86 ff fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 59 e7 ff ff 48 b9 10 b5 90 c7 f7 7f 00 00 e8 0a b2 b0 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 e1 ac a5 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 af b1 b0 5e 48 8b f8 48 8b ce 33 d2 e8 02 15 96 4f 48 8b d0 48 8b cf e8 e7 48 ff fe 48 8b cf e8 df fd a7 5e cc}
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
0038h mov rcx,7ff7c794d198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 d1 94 c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 a5 b0 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c794d390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 d3 94 c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b a5 b0 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c794d5b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 d5 94 c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d a5 b0 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c794d740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d7 94 c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f a5 b0 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6241f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1f 24 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-115985ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a6 67 ea fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6241f40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1f 24 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-1159869h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 97 67 ea fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c73970d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f b9 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6241f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1f 24 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-1159889h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 77 67 ea fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c73970d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 b8 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6241f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1f 24 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-11598a9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 57 67 ea fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c73970d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf b8 ff ff}
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
0172h call 7ff7c7361a30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 61 fc ff}
0177h mov rcx,7ff7c790b510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 b5 90 c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a b4 b0 5e}
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
01cah mov r11,7ff7c6241ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1e 24 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-11599b4h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4c 66 ea fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6241f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1f 24 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-11599c3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3d 66 ea fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c73970d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 b8 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c735a470h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 eb fb ff}
021ah mov rcx,7ff7c790b510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 b5 90 c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 b3 b0 5e}
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
026dh mov r11,7ff7c6241f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1f 24 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-1159a47h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b9 65 ea fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6241f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1f 24 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-1159a56h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 aa 65 ea fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c73970d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 b7 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6241f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1f 24 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-1159a76h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8a 65 ea fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c73970d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a b7 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c7360710h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 4d fc ff}
02f6h mov rcx,7ff7c790b510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 b5 90 c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db b2 b0 5e}
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
0349h mov r11,7ff7c6241f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1f 24 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-1159b0bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f5 64 ea fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6241f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1f 24 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-1159b1ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e6 64 ea fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c73970d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 b6 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6241f30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1f 24 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-1159b3ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c6 64 ea fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c738b9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 ff fe ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c739a1f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 e7 ff ff}
03c7h mov rcx,7ff7c790b510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 b5 90 c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a b2 b0 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 ac a5 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af b1 b0 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 15 96 4f}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 48 ff fe}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df fd a7 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IOperator<Vector256<ulong>> expr)
; eval_g[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 98 d9 94 c7 f7 7f 00 00 e8 09 a1 b0 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 90 db 94 c7 f7 7f 00 00 e8 eb a0 b0 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 b8 dd 94 c7 f7 7f 00 00 e8 cd a0 b0 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 40 df 94 c7 f7 7f 00 00 e8 af a0 b0 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 98 1f 24 c6 f7 7f 00 00 39 09 ff 15 56 63 ea fe 8b d8 48 8b cf 49 bb a0 1f 24 c6 f7 7f 00 00 39 09 ff 15 47 63 ea fe 48 8b c8 e8 9f b6 ff ff c5 fd 10 70 08 48 8b cf 49 bb a8 1f 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 27 63 ea fe 48 8b c8 e8 77 b6 ff ff c5 7d 10 40 08 48 8b cf 49 bb b0 1f 24 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 07 63 ea fe 48 8b c8 e8 4f b6 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 b9 61 fc ff 48 b9 20 00 92 c7 f7 7f 00 00 e8 aa af b0 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 58 1f 24 c6 f7 7f 00 00 39 09 ff 15 fc 61 ea fe 8b e8 48 8b cf 49 bb 60 1f 24 c6 f7 7f 00 00 39 09 ff 15 ed 61 ea fe 48 8b c8 e8 85 b5 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 26 ec fb ff 48 b9 20 00 92 c7 f7 7f 00 00 e8 07 af b0 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 68 1f 24 c6 f7 7f 00 00 39 09 ff 15 69 61 ea fe 8b f0 48 8b cb 49 bb 70 1f 24 c6 f7 7f 00 00 39 09 ff 15 5a 61 ea fe 48 8b c8 e8 e2 b4 ff ff c5 fd 10 70 08 48 8b cb 49 bb 78 1f 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 3a 61 ea fe 48 8b c8 e8 ba b4 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 7a 4b fc ff 48 b9 20 00 92 c7 f7 7f 00 00 e8 2b ae b0 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 80 1f 24 c6 f7 7f 00 00 39 09 ff 15 a5 60 ea fe 8b f0 48 8b cd 49 bb 88 1f 24 c6 f7 7f 00 00 39 09 ff 15 96 60 ea fe 48 8b c8 e8 06 b4 ff ff c5 fd 10 70 08 48 8b cd 49 bb 90 1f 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 76 60 ea fe 48 8b c8 e8 d6 fa fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 11 e3 ff ff 48 b9 20 00 92 c7 f7 7f 00 00 e8 5a ad b0 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 31 a8 a5 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 ff ac b0 5e 48 8b f8 48 8b ce 33 d2 e8 52 10 96 4f 48 8b d0 48 8b cf e8 37 44 ff fe 48 8b cf e8 2f f9 a7 5e cc}
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
0038h mov rcx,7ff7c794d998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 d9 94 c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 a1 b0 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c794db90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 db 94 c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb a0 b0 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c794ddb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 dd 94 c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd a0 b0 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c794df40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 df 94 c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af a0 b0 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6241f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1f 24 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-1159caah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 56 63 ea fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6241fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1f 24 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-1159cb9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 47 63 ea fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c7397300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f b6 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6241fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1f 24 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-1159cd9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 27 63 ea fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c7397300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 b6 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6241fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1f 24 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-1159cf9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 07 63 ea fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c7397300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f b6 ff ff}
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
0172h call 7ff7c7361eb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 61 fc ff}
0177h mov rcx,7ff7c7920020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 00 92 c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa af b0 5e}
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
01cah mov r11,7ff7c6241f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1f 24 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-1159e04h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fc 61 ea fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6241f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1f 24 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-1159e13h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ed 61 ea fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c7397300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 b5 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c735a9c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 ec fb ff}
021ah mov rcx,7ff7c7920020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 00 92 c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 af b0 5e}
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
026dh mov r11,7ff7c6241f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1f 24 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-1159e97h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 69 61 ea fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6241f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1f 24 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-1159ea6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5a 61 ea fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c7397300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 b4 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6241f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1f 24 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-1159ec6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3a 61 ea fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c7397300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba b4 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c73609f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 4b fc ff}
02f6h mov rcx,7ff7c7920020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 00 92 c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b ae b0 5e}
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
0349h mov r11,7ff7c6241f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1f 24 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-1159f5bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a5 60 ea fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6241f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1f 24 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-1159f6ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 96 60 ea fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c7397300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 b4 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6241f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1f 24 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-1159f8ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 76 60 ea fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c738b9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 fa fe ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c739a258h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 e3 ff ff}
03c7h mov rcx,7ff7c7920020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 00 92 c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a ad b0 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 a8 a5 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff ac b0 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 10 96 4f}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 44 ff fe}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f f9 a7 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IOperator<Vector256<long>> expr)
; eval_g[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 98 e1 94 c7 f7 7f 00 00 e8 59 9c b0 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 90 e3 94 c7 f7 7f 00 00 e8 3b 9c b0 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 b8 e5 94 c7 f7 7f 00 00 e8 1d 9c b0 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 40 e7 94 c7 f7 7f 00 00 e8 ff 9b b0 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb f8 1f 24 c6 f7 7f 00 00 39 09 ff 15 06 5f ea fe 8b d8 48 8b cf 49 bb 00 20 24 c6 f7 7f 00 00 39 09 ff 15 f7 5e ea fe 48 8b c8 e8 1f b4 ff ff c5 fd 10 70 08 48 8b cf 49 bb 08 20 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 d7 5e ea fe 48 8b c8 e8 f7 b3 ff ff c5 7d 10 40 08 48 8b cf 49 bb 10 20 24 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 b7 5e ea fe 48 8b c8 e8 cf b3 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 89 5d fc ff 48 b9 80 b9 90 c7 f7 7f 00 00 e8 fa aa b0 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb b8 1f 24 c6 f7 7f 00 00 39 09 ff 15 ac 5d ea fe 8b e8 48 8b cf 49 bb c0 1f 24 c6 f7 7f 00 00 39 09 ff 15 9d 5d ea fe 48 8b c8 e8 05 b3 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 c6 e8 fb ff 48 b9 80 b9 90 c7 f7 7f 00 00 e8 57 aa b0 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb c8 1f 24 c6 f7 7f 00 00 39 09 ff 15 19 5d ea fe 8b f0 48 8b cb 49 bb d0 1f 24 c6 f7 7f 00 00 39 09 ff 15 0a 5d ea fe 48 8b c8 e8 62 b2 ff ff c5 fd 10 70 08 48 8b cb 49 bb d8 1f 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 ea 5c ea fe 48 8b c8 e8 3a b2 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 aa 49 fc ff 48 b9 80 b9 90 c7 f7 7f 00 00 e8 7b a9 b0 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb e0 1f 24 c6 f7 7f 00 00 39 09 ff 15 55 5c ea fe 8b f0 48 8b cd 49 bb e8 1f 24 c6 f7 7f 00 00 39 09 ff 15 46 5c ea fe 48 8b c8 e8 86 b1 ff ff c5 fd 10 70 08 48 8b cd 49 bb f0 1f 24 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 26 5c ea fe 48 8b c8 e8 26 f6 fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 c9 de ff ff 48 b9 80 b9 90 c7 f7 7f 00 00 e8 aa a8 b0 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 81 a3 a5 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 4f a8 b0 5e 48 8b f8 48 8b ce 33 d2 e8 a2 0b 96 4f 48 8b d0 48 8b cf e8 87 3f ff fe 48 8b cf e8 7f f4 a7 5e cc}
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
0038h mov rcx,7ff7c794e198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e1 94 c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 9c b0 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c794e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e3 94 c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 9c b0 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c794e5b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 e5 94 c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 9c b0 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c794e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 94 c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 9b b0 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6241ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1f 24 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-115a0fah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 06 5f ea fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6242000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 20 24 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-115a109h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f7 5e ea fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c7397530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f b4 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6242008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 20 24 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-115a129h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d7 5e ea fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c7397530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 b3 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6242010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 20 24 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-115a149h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b7 5e ea fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c7397530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf b3 ff ff}
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
0172h call 7ff7c7361f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 5d fc ff}
0177h mov rcx,7ff7c790b980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b9 90 c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa aa b0 5e}
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
01cah mov r11,7ff7c6241fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1f 24 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-115a254h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ac 5d ea fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6241fc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1f 24 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-115a263h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9d 5d ea fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c7397530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 b3 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c735ab10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 e8 fb ff}
021ah mov rcx,7ff7c790b980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b9 90 c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 aa b0 5e}
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
026dh mov r11,7ff7c6241fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1f 24 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-115a2e7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 19 5d ea fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6241fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1f 24 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-115a2f6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0a 5d ea fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c7397530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 b2 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6241fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1f 24 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-115a316h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ea 5c ea fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c7397530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a b2 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c7360cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 49 fc ff}
02f6h mov rcx,7ff7c790b980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b9 90 c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b a9 b0 5e}
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
0349h mov r11,7ff7c6241fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1f 24 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-115a3abh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 55 5c ea fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6241fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1f 24 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-115a3bah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 46 5c ea fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c7397530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 b1 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6241ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1f 24 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-115a3dah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 26 5c ea fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c738b9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 f6 fe ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c739a2c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 de ff ff}
03c7h mov rcx,7ff7c790b980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b9 90 c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa a8 b0 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 a3 a5 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f a8 b0 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 0b 96 4f}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 3f ff fe}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f f4 a7 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
