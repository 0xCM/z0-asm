------------------------------------------------------------------------------------------------------------------------
; BinaryOp<bit> lookup(BinaryBitLogicKind:byte kind)
; bbl~lookup[751] = {57 56 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 07 04 00 00 8b c9 48 8d 05 5a 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 38 bb ae c6 f7 7f 00 00 e8 a4 c6 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 b7 45 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 5d 7f c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 38 bb ae c6 f7 7f 00 00 e8 65 c6 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 b7 45 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 5d 7f c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 38 bb ae c6 f7 7f 00 00 e8 26 c6 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 b7 45 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 5d 7f c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 38 bb ae c6 f7 7f 00 00 e8 e7 c5 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 b7 45 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 5d 7f c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 38 bb ae c6 f7 7f 00 00 e8 a8 c5 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 b6 45 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 5d 7f c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 38 bb ae c6 f7 7f 00 00 e8 69 c5 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a b6 45 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 5d 7f c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 38 bb ae c6 f7 7f 00 00 e8 2a c5 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b b6 45 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 5d 7f c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 38 bb ae c6 f7 7f 00 00 e8 eb c4 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c b6 45 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 5d 7f c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 38 bb ae c6 f7 7f 00 00 e8 ac c4 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd b5 45 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 5d 7f c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 38 bb ae c6 f7 7f 00 00 e8 6d c4 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e b5 45 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 5d 7f c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 38 bb ae c6 f7 7f 00 00 e8 2e c4 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f b5 45 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 5d 7f c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 38 bb ae c6 f7 7f 00 00 e8 ef c3}
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
002dh mov rcx,7ff7c6aebb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bb ae c6 f7 7f 00 00}
0037h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 c6 45 5f}
003ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
003fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0043h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0046h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 b7 45 5f}
004bh mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0055h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0059h mov rcx,7ff7c67f5d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5d 7f c6 f7 7f 00 00}
0063h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0067h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006ch mov rcx,7ff7c6aebb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bb ae c6 f7 7f 00 00}
0076h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 c6 45 5f}
007bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0082h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0085h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 b7 45 5f}
008ah mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0094h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0098h mov rcx,7ff7c67f5d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 5d 7f c6 f7 7f 00 00}
00a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a6h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00abh mov rcx,7ff7c6aebb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bb ae c6 f7 7f 00 00}
00b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 c6 45 5f}
00bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 b7 45 5f}
00c9h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
00d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d7h mov rcx,7ff7c67f5d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 5d 7f c6 f7 7f 00 00}
00e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e5h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00eah mov rcx,7ff7c6aebb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bb ae c6 f7 7f 00 00}
00f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 c5 45 5f}
00f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0100h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0103h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 b7 45 5f}
0108h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0112h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0116h mov rcx,7ff7c67f5d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 5d 7f c6 f7 7f 00 00}
0120h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0124h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
0129h mov rcx,7ff7c6aebb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bb ae c6 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 c5 45 5f}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 b6 45 5f}
0147h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c67f5d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 7f c6 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0168h mov rcx,7ff7c6aebb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bb ae c6 f7 7f 00 00}
0172h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 c5 45 5f}
0177h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0181h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a b6 45 5f}
0186h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0190h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0194h mov rcx,7ff7c67f5d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5d 7f c6 f7 7f 00 00}
019eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a2h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a7h mov rcx,7ff7c6aebb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bb ae c6 f7 7f 00 00}
01b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a c5 45 5f}
01b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b b6 45 5f}
01c5h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
01cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d3h mov rcx,7ff7c67f5d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 5d 7f c6 f7 7f 00 00}
01ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e1h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e6h mov rcx,7ff7c6aebb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bb ae c6 f7 7f 00 00}
01f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb c4 45 5f}
01f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c b6 45 5f}
0204h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
020eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0212h mov rcx,7ff7c67f5d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5d 7f c6 f7 7f 00 00}
021ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0220h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0225h mov rcx,7ff7c6aebb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bb ae c6 f7 7f 00 00}
022fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac c4 45 5f}
0234h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0237h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd b5 45 5f}
0243h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
024dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0251h mov rcx,7ff7c67f5d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 5d 7f c6 f7 7f 00 00}
025bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
025fh jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0264h mov rcx,7ff7c6aebb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bb ae c6 f7 7f 00 00}
026eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d c4 45 5f}
0273h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0276h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e b5 45 5f}
0282h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
028ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0290h mov rcx,7ff7c67f5d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 5d 7f c6 f7 7f 00 00}
029ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029eh jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a3h mov rcx,7ff7c6aebb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bb ae c6 f7 7f 00 00}
02adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e c4 45 5f}
02b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f b5 45 5f}
02c1h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
02cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02cfh mov rcx,7ff7c67f5da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 5d 7f c6 f7 7f 00 00}
02d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02ddh jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e2h mov rcx,7ff7c6aebb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bb ae c6 f7 7f 00 00}
02ech (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 ef c3}
