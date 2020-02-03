------------------------------------------------------------------------------------------------------------------------
; UnaryOp<bit> lookup(UnaryBitLogicKind:byte kind)
; lookup_8u[113] = {57 56 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 03 0f 87 28 01 00 00 8b c9 48 8d 05 7a 01 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 68 b7 7b c7 f7 7f 00 00 e8 84 de b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 cf b8 5e 48 b8 90 e3 23 c6 f7 7f 00 00 48 89 46 18 48 b8 60 4f 31 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5e 5f c3}
; TermCode = ZEDx7_RET
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
002dh mov rcx,7ff7c77bb768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 b7 7b c7 f7 7f 00 00}
0037h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 de b8 5e}
003ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
003fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0043h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0046h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 cf b8 5e}
004bh mov rax,7ff7c623e390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e3 23 c6 f7 7f 00 00}
0055h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0059h mov rax,7ff7c7314f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 4f 31 c7 f7 7f 00 00}
0063h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0067h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<bit> lookup(BinaryBitLogicKind:byte kind)
; lookup_8u[1052] = {57 56 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 07 04 00 00 8b c9 48 8d 05 5a 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 18 b9 7b c7 f7 7f 00 00 e8 c4 dc b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 cd b8 5e 48 b9 c0 e3 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 4f 31 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 18 b9 7b c7 f7 7f 00 00 e8 85 dc b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 cd b8 5e 48 b9 c0 e3 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 4f 31 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 18 b9 7b c7 f7 7f 00 00 e8 46 dc b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 cd b8 5e 48 b9 c0 e3 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 4f 31 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 18 b9 7b c7 f7 7f 00 00 e8 07 dc b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 cd b8 5e 48 b9 c0 e3 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 4f 31 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 18 b9 7b c7 f7 7f 00 00 e8 c8 db b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 cc b8 5e 48 b9 c0 e3 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 4f 31 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 18 b9 7b c7 f7 7f 00 00 e8 89 db b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba cc b8 5e 48 b9 c0 e3 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 4f 31 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 18 b9 7b c7 f7 7f 00 00 e8 4a db b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b cc b8 5e 48 b9 c0 e3 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 4f 31 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 18 b9 7b c7 f7 7f 00 00 e8 0b db b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c cc b8 5e 48 b9 c0 e3 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 4f 31 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 18 b9 7b c7 f7 7f 00 00 e8 cc da b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd cb b8 5e 48 b9 c0 e3 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 4f 31 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 18 b9 7b c7 f7 7f 00 00 e8 8d da b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be cb b8 5e 48 b9 c0 e3 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 4f 31 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 18 b9 7b c7 f7 7f 00 00 e8 4e da b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f cb b8 5e 48 b9 c0 e3 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 4f 31 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 18 b9 7b c7 f7 7f 00 00 e8 0f da b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 cb b8 5e 48 b9 c0 e3 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 4f 31 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 18 b9 7b c7 f7 7f 00 00 e8 d0 d9 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 cb b8 5e 48 b9 c0 e3 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 4f 31 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 18 b9 7b c7 f7 7f 00 00 e8 91 d9 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 ca b8 5e 48 b9 c0 e3 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 4f 31 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 18 b9 7b c7 f7 7f 00 00 e8 55 d9 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 86 ca b8 5e 48 b9 c0 e3 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 4f 31 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 18 b9 7b c7 f7 7f 00 00 e8 19 d9 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a ca b8 5e 48 b8 c0 e3 23 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 4f 31 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5e 5f c3}
; TermCode = ZEDx7_RET
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
002dh mov rcx,7ff7c77bb918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b9 7b c7 f7 7f 00 00}
0037h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 dc b8 5e}
003ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
003fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0043h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0046h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 cd b8 5e}
004bh mov rcx,7ff7c623e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 23 c6 f7 7f 00 00}
0055h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0059h mov rcx,7ff7c7314f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 4f 31 c7 f7 7f 00 00}
0063h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0067h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006ch mov rcx,7ff7c77bb918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b9 7b c7 f7 7f 00 00}
0076h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 dc b8 5e}
007bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0082h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0085h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 cd b8 5e}
008ah mov rcx,7ff7c623e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 23 c6 f7 7f 00 00}
0094h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0098h mov rcx,7ff7c7314f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 4f 31 c7 f7 7f 00 00}
00a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a6h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00abh mov rcx,7ff7c77bb918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b9 7b c7 f7 7f 00 00}
00b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 dc b8 5e}
00bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 cd b8 5e}
00c9h mov rcx,7ff7c623e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 23 c6 f7 7f 00 00}
00d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d7h mov rcx,7ff7c7314f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f 31 c7 f7 7f 00 00}
00e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e5h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00eah mov rcx,7ff7c77bb918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b9 7b c7 f7 7f 00 00}
00f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 dc b8 5e}
00f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0100h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0103h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 cd b8 5e}
0108h mov rcx,7ff7c623e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 23 c6 f7 7f 00 00}
0112h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0116h mov rcx,7ff7c7314f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 4f 31 c7 f7 7f 00 00}
0120h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0124h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
0129h mov rcx,7ff7c77bb918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b9 7b c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 db b8 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 cc b8 5e}
0147h mov rcx,7ff7c623e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 23 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c7314f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 4f 31 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0168h mov rcx,7ff7c77bb918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b9 7b c7 f7 7f 00 00}
0172h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 db b8 5e}
0177h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0181h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba cc b8 5e}
0186h mov rcx,7ff7c623e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 23 c6 f7 7f 00 00}
0190h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0194h mov rcx,7ff7c7314f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 4f 31 c7 f7 7f 00 00}
019eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a2h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a7h mov rcx,7ff7c77bb918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b9 7b c7 f7 7f 00 00}
01b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a db b8 5e}
01b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b cc b8 5e}
01c5h mov rcx,7ff7c623e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 23 c6 f7 7f 00 00}
01cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d3h mov rcx,7ff7c7314fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 4f 31 c7 f7 7f 00 00}
01ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e1h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e6h mov rcx,7ff7c77bb918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b9 7b c7 f7 7f 00 00}
01f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b db b8 5e}
01f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c cc b8 5e}
0204h mov rcx,7ff7c623e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 23 c6 f7 7f 00 00}
020eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0212h mov rcx,7ff7c7314fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 4f 31 c7 f7 7f 00 00}
021ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0220h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0225h mov rcx,7ff7c77bb918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b9 7b c7 f7 7f 00 00}
022fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc da b8 5e}
0234h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0237h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd cb b8 5e}
0243h mov rcx,7ff7c623e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 23 c6 f7 7f 00 00}
024dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0251h mov rcx,7ff7c7314fc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 4f 31 c7 f7 7f 00 00}
025bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
025fh jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0264h mov rcx,7ff7c77bb918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b9 7b c7 f7 7f 00 00}
026eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d da b8 5e}
0273h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0276h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be cb b8 5e}
0282h mov rcx,7ff7c623e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 23 c6 f7 7f 00 00}
028ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0290h mov rcx,7ff7c7314fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 4f 31 c7 f7 7f 00 00}
029ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029eh jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a3h mov rcx,7ff7c77bb918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b9 7b c7 f7 7f 00 00}
02adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e da b8 5e}
02b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f cb b8 5e}
02c1h mov rcx,7ff7c623e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 23 c6 f7 7f 00 00}
02cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02cfh mov rcx,7ff7c7314fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 4f 31 c7 f7 7f 00 00}
02d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02ddh jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e2h mov rcx,7ff7c77bb918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b9 7b c7 f7 7f 00 00}
02ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f da b8 5e}
02f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 cb b8 5e}
0300h mov rcx,7ff7c623e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 23 c6 f7 7f 00 00}
030ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030eh mov rcx,7ff7c7314fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 4f 31 c7 f7 7f 00 00}
0318h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031ch jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0321h mov rcx,7ff7c77bb918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b9 7b c7 f7 7f 00 00}
032bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 d9 b8 5e}
0330h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0333h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0337h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 cb b8 5e}
033fh mov rcx,7ff7c623e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 23 c6 f7 7f 00 00}
0349h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034dh mov rcx,7ff7c7314fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 4f 31 c7 f7 7f 00 00}
0357h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035bh jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0360h mov rcx,7ff7c77bb918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b9 7b c7 f7 7f 00 00}
036ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 d9 b8 5e}
036fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0372h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0376h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0379h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 ca b8 5e}
037eh mov rcx,7ff7c623e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 23 c6 f7 7f 00 00}
0388h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038ch mov rcx,7ff7c7314fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 4f 31 c7 f7 7f 00 00}
0396h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ah jmp short 0412h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039ch mov rcx,7ff7c77bb918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b9 7b c7 f7 7f 00 00}
03a6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 d9 b8 5e}
03abh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03aeh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 ca b8 5e}
03bah mov rcx,7ff7c623e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 23 c6 f7 7f 00 00}
03c4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c8h mov rcx,7ff7c7314fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 4f 31 c7 f7 7f 00 00}
03d2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d6h jmp short 0412h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d8h mov rcx,7ff7c77bb918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b9 7b c7 f7 7f 00 00}
03e2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 d9 b8 5e}
03e7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03eah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03eeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a ca b8 5e}
03f6h mov rax,7ff7c623e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 23 c6 f7 7f 00 00}
0400h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0404h mov rax,7ff7c7314fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 4f 31 c7 f7 7f 00 00}
040eh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0412h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0415h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0419h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041bh ret                                     ; RET || C3 || encoded[1]{c3}
