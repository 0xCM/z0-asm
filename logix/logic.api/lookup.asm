------------------------------------------------------------------------------------------------------------------------
; UnaryOp<bit> lookup(UnaryBitLogicKind:byte kind)
; lookup_UnaryBitLogicKind~8u[113] = {57 56 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 03 0f 87 28 01 00 00 8b c9 48 8d 05 7a 01 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 c0 a3 e2 c7 f7 7f 00 00 e8 24 15 53 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 06 53 5f 48 b8 b0 db 62 c7 f7 7f 00 00 48 89 46 18 48 b8 20 56 d1 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0008h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000ch cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
000fh ja near ptr 013dh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 28 01 00 00}
0015h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0017h lea rax,[rip+17ah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 7a 01 00 00}
001eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0021h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002dh mov rcx,7ff7c7e2a3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a3 e2 c7 f7 7f 00 00}
0037h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 15 53 5f}
003ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
003fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0043h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0046h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 06 53 5f}
004bh mov rax,7ff7c762dbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 db 62 c7 f7 7f 00 00}
0055h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0059h mov rax,7ff7c7d15620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 56 d1 c7 f7 7f 00 00}
0063h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0067h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<bit> lookup(BinaryBitLogicKind:byte kind)
; lookup_BinaryBitLogicKind~8u[1052] = {57 56 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 07 04 00 00 8b c9 48 8d 05 5a 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 20 a7 e2 c7 f7 7f 00 00 e8 e4 05 53 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 f7 52 5f 48 b9 e0 db 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 56 d1 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 20 a7 e2 c7 f7 7f 00 00 e8 a5 05 53 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 f6 52 5f 48 b9 e0 db 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 56 d1 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 20 a7 e2 c7 f7 7f 00 00 e8 66 05 53 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 f6 52 5f 48 b9 e0 db 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 56 d1 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 20 a7 e2 c7 f7 7f 00 00 e8 27 05 53 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 f6 52 5f 48 b9 e0 db 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 56 d1 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 20 a7 e2 c7 f7 7f 00 00 e8 e8 04 53 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 f6 52 5f 48 b9 e0 db 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 56 d1 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 20 a7 e2 c7 f7 7f 00 00 e8 a9 04 53 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 da f5 52 5f 48 b9 e0 db 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 56 d1 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 20 a7 e2 c7 f7 7f 00 00 e8 6a 04 53 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b f5 52 5f 48 b9 e0 db 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 56 d1 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 20 a7 e2 c7 f7 7f 00 00 e8 2b 04 53 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c f5 52 5f 48 b9 e0 db 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 56 d1 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 20 a7 e2 c7 f7 7f 00 00 e8 ec 03 53 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d f5 52 5f 48 b9 e0 db 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 56 d1 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 20 a7 e2 c7 f7 7f 00 00 e8 ad 03 53 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 de f4 52 5f 48 b9 e0 db 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 56 d1 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 20 a7 e2 c7 f7 7f 00 00 e8 6e 03 53 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f f4 52 5f 48 b9 e0 db 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 56 d1 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 20 a7 e2 c7 f7 7f 00 00 e8 2f 03 53 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 f4 52 5f 48 b9 e0 db 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 56 d1 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 20 a7 e2 c7 f7 7f 00 00 e8 f0 02 53 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 f4 52 5f 48 b9 e0 db 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 56 d1 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 20 a7 e2 c7 f7 7f 00 00 e8 b1 02 53 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 f3 52 5f 48 b9 e0 db 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 56 d1 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 20 a7 e2 c7 f7 7f 00 00 e8 75 02 53 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 f3 52 5f 48 b9 e0 db 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 56 d1 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 20 a7 e2 c7 f7 7f 00 00 e8 39 02 53 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6a f3 52 5f 48 b8 e0 db 62 c7 f7 7f 00 00 48 89 46 18 48 b8 a8 56 d1 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0008h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000ch cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
000fh ja near ptr 041ch                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 07 04 00 00}
0015h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0017h lea rax,[rip+45ah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 5a 04 00 00}
001eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0021h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002dh mov rcx,7ff7c7e2a720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a7 e2 c7 f7 7f 00 00}
0037h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 05 53 5f}
003ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
003fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0043h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0046h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 f7 52 5f}
004bh mov rcx,7ff7c762dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 62 c7 f7 7f 00 00}
0055h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0059h mov rcx,7ff7c7d15638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 56 d1 c7 f7 7f 00 00}
0063h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0067h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006ch mov rcx,7ff7c7e2a720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a7 e2 c7 f7 7f 00 00}
0076h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 05 53 5f}
007bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0082h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0085h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 f6 52 5f}
008ah mov rcx,7ff7c762dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 62 c7 f7 7f 00 00}
0094h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0098h mov rcx,7ff7c7d15630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 56 d1 c7 f7 7f 00 00}
00a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a6h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00abh mov rcx,7ff7c7e2a720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a7 e2 c7 f7 7f 00 00}
00b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 05 53 5f}
00bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 f6 52 5f}
00c9h mov rcx,7ff7c762dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 62 c7 f7 7f 00 00}
00d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d7h mov rcx,7ff7c7d15640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 56 d1 c7 f7 7f 00 00}
00e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e5h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00eah mov rcx,7ff7c7e2a720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a7 e2 c7 f7 7f 00 00}
00f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 05 53 5f}
00f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0100h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0103h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 f6 52 5f}
0108h mov rcx,7ff7c762dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 62 c7 f7 7f 00 00}
0112h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0116h mov rcx,7ff7c7d15648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 56 d1 c7 f7 7f 00 00}
0120h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0124h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
0129h mov rcx,7ff7c7e2a720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a7 e2 c7 f7 7f 00 00}
0133h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 04 53 5f}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 f6 52 5f}
0147h mov rcx,7ff7c762dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 62 c7 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c7d15650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 56 d1 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0168h mov rcx,7ff7c7e2a720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a7 e2 c7 f7 7f 00 00}
0172h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 04 53 5f}
0177h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0181h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da f5 52 5f}
0186h mov rcx,7ff7c762dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 62 c7 f7 7f 00 00}
0190h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0194h mov rcx,7ff7c7d15658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 56 d1 c7 f7 7f 00 00}
019eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a2h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a7h mov rcx,7ff7c7e2a720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a7 e2 c7 f7 7f 00 00}
01b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 04 53 5f}
01b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b f5 52 5f}
01c5h mov rcx,7ff7c762dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 62 c7 f7 7f 00 00}
01cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d3h mov rcx,7ff7c7d15660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 56 d1 c7 f7 7f 00 00}
01ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e1h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e6h mov rcx,7ff7c7e2a720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a7 e2 c7 f7 7f 00 00}
01f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 04 53 5f}
01f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c f5 52 5f}
0204h mov rcx,7ff7c762dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 62 c7 f7 7f 00 00}
020eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0212h mov rcx,7ff7c7d15668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 56 d1 c7 f7 7f 00 00}
021ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0220h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0225h mov rcx,7ff7c7e2a720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a7 e2 c7 f7 7f 00 00}
022fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 03 53 5f}
0234h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0237h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d f5 52 5f}
0243h mov rcx,7ff7c762dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 62 c7 f7 7f 00 00}
024dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0251h mov rcx,7ff7c7d15680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 56 d1 c7 f7 7f 00 00}
025bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
025fh jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0264h mov rcx,7ff7c7e2a720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a7 e2 c7 f7 7f 00 00}
026eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 03 53 5f}
0273h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0276h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de f4 52 5f}
0282h mov rcx,7ff7c762dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 62 c7 f7 7f 00 00}
028ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0290h mov rcx,7ff7c7d15688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 56 d1 c7 f7 7f 00 00}
029ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029eh jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a3h mov rcx,7ff7c7e2a720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a7 e2 c7 f7 7f 00 00}
02adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 03 53 5f}
02b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f f4 52 5f}
02c1h mov rcx,7ff7c762dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 62 c7 f7 7f 00 00}
02cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02cfh mov rcx,7ff7c7d15690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 56 d1 c7 f7 7f 00 00}
02d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02ddh jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e2h mov rcx,7ff7c7e2a720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a7 e2 c7 f7 7f 00 00}
02ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 03 53 5f}
02f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 f4 52 5f}
0300h mov rcx,7ff7c762dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 62 c7 f7 7f 00 00}
030ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030eh mov rcx,7ff7c7d15698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 56 d1 c7 f7 7f 00 00}
0318h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031ch jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0321h mov rcx,7ff7c7e2a720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a7 e2 c7 f7 7f 00 00}
032bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 02 53 5f}
0330h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0333h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0337h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 f4 52 5f}
033fh mov rcx,7ff7c762dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 62 c7 f7 7f 00 00}
0349h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034dh mov rcx,7ff7c7d15670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 56 d1 c7 f7 7f 00 00}
0357h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035bh jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0360h mov rcx,7ff7c7e2a720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a7 e2 c7 f7 7f 00 00}
036ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 02 53 5f}
036fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0372h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0376h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0379h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 f3 52 5f}
037eh mov rcx,7ff7c762dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 62 c7 f7 7f 00 00}
0388h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038ch mov rcx,7ff7c7d15678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 56 d1 c7 f7 7f 00 00}
0396h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ah jmp short 0412h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039ch mov rcx,7ff7c7e2a720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a7 e2 c7 f7 7f 00 00}
03a6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 02 53 5f}
03abh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03aeh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b5h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 f3 52 5f}
03bah mov rcx,7ff7c762dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 62 c7 f7 7f 00 00}
03c4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c8h mov rcx,7ff7c7d156a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 56 d1 c7 f7 7f 00 00}
03d2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d6h jmp short 0412h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d8h mov rcx,7ff7c7e2a720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a7 e2 c7 f7 7f 00 00}
03e2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 02 53 5f}
03e7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03eah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03eeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f1h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a f3 52 5f}
03f6h mov rax,7ff7c762dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 db 62 c7 f7 7f 00 00}
0400h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0404h mov rax,7ff7c7d156a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 56 d1 c7 f7 7f 00 00}
040eh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0412h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0415h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0419h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041bh ret                                     ; RET || C3 || encoded[1]{c3}
