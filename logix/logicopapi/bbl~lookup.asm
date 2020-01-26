------------------------------------------------------------------------------------------------------------------------
; BinaryOp<bit> lookup(BinaryBitLogicKind:byte kind)
; bbl~lookup[247] = {57 56 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 07 04 00 00 8b c9 48 8d 05 5a 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 60 8d ae c6 f7 7f 00 00 e8 84 c4 46 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 b5 46 5f 48 b9 c0 d8 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 6b 80 c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 60 8d ae c6 f7 7f 00 00 e8 45 c4 46 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 76 b5 46 5f 48 b9 c0 d8 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 6b 80 c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 60 8d ae c6 f7 7f 00 00 e8 06 c4 46 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 37 b5 46 5f 48 b9 c0 d8 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 6b 80 c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 60 8d ae c6 f7 7f 00 00 e8 c7 c3}
; Capture completion code = ZEDx6_RET
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
002dh mov rcx,7ff7c6ae8d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8d ae c6 f7 7f 00 00}
0037h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 c4 46 5f}
003ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
003fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0043h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0046h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 b5 46 5f}
004bh mov rcx,7ff7c627d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 27 c6 f7 7f 00 00}
0055h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0059h mov rcx,7ff7c6806b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 6b 80 c6 f7 7f 00 00}
0063h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0067h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006ch mov rcx,7ff7c6ae8d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8d ae c6 f7 7f 00 00}
0076h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 c4 46 5f}
007bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0082h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0085h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 b5 46 5f}
008ah mov rcx,7ff7c627d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 27 c6 f7 7f 00 00}
0094h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0098h mov rcx,7ff7c6806b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6b 80 c6 f7 7f 00 00}
00a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a6h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00abh mov rcx,7ff7c6ae8d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8d ae c6 f7 7f 00 00}
00b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 c4 46 5f}
00bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 b5 46 5f}
00c9h mov rcx,7ff7c627d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 27 c6 f7 7f 00 00}
00d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d7h mov rcx,7ff7c6806b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6b 80 c6 f7 7f 00 00}
00e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e5h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00eah mov rcx,7ff7c6ae8d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8d ae c6 f7 7f 00 00}
00f4h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 c7 c3}
