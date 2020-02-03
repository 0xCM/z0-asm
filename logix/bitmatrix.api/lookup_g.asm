------------------------------------------------------------------------------------------------------------------------
; BitMatrixBinaryRefOp<byte> lookup<byte>(BinaryBitLogicKind:byte kind)
; lookup_g8u[1054] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 e0 27 7f c7 f7 7f 00 00 e8 d3 16 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 08 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 47 32 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 e0 27 7f c7 f7 7f 00 00 e8 94 16 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 07 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 48 32 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 e0 27 7f c7 f7 7f 00 00 e8 55 16 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 86 07 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 1e 32 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 e0 27 7f c7 f7 7f 00 00 e8 16 16 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 47 07 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 11 32 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 e0 27 7f c7 f7 7f 00 00 e8 d7 15 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 07 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 1d 32 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 e0 27 7f c7 f7 7f 00 00 e8 98 15 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 06 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 1d 32 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 e0 27 7f c7 f7 7f 00 00 e8 59 15 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8a 06 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 1d 32 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 e0 27 7f c7 f7 7f 00 00 e8 1a 15 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b 06 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 1d 32 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 e0 27 7f c7 f7 7f 00 00 e8 db 14 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c 06 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 1e 32 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 e0 27 7f c7 f7 7f 00 00 e8 9c 14 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd 05 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 1d 32 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 e0 27 7f c7 f7 7f 00 00 e8 5d 14 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8e 05 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 1e 32 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e0 27 7f c7 f7 7f 00 00 e8 1e 14 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4f 05 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 1d 32 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e0 27 7f c7 f7 7f 00 00 e8 df 13 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 10 05 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 1d 32 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e0 27 7f c7 f7 7f 00 00 e8 a0 13 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 04 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 1e 32 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e0 27 7f c7 f7 7f 00 00 e8 64 13 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 04 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 1d 32 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e0 27 7f c7 f7 7f 00 00 e8 28 13 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 04 b8 5e 48 b8 00 e4 23 c6 f7 7f 00 00 48 89 46 18 48 b8 70 1e 32 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c77f27e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 27 7f c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 16 b8 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 08 b8 5e}
004ch mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c7324778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 47 32 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c77f27e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 27 7f c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 16 b8 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 07 b8 5e}
008bh mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7324878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 48 32 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c77f27e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 27 7f c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 16 b8 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 07 b8 5e}
00cah mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7321e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 1e 32 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c77f27e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 27 7f c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 16 b8 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 07 b8 5e}
0109h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c7321198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 11 32 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c77f27e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 27 7f c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 15 b8 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 07 b8 5e}
0148h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7321dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 1d 32 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c77f27e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 27 7f c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 15 b8 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 06 b8 5e}
0187h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c7321db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1d 32 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c77f27e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 27 7f c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 15 b8 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 06 b8 5e}
01c6h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c7321df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 1d 32 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c77f27e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 27 7f c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 15 b8 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 06 b8 5e}
0205h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c7321d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 1d 32 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c77f27e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 27 7f c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 14 b8 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 06 b8 5e}
0244h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7321e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 1e 32 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c77f27e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 27 7f c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 14 b8 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 05 b8 5e}
0283h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c7321d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 1d 32 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c77f27e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 27 7f c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 14 b8 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 05 b8 5e}
02c2h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c7321e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 1e 32 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c77f27e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 27 7f c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 14 b8 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 05 b8 5e}
0301h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c7321d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 1d 32 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c77f27e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 27 7f c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 13 b8 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 05 b8 5e}
0340h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c7321d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 1d 32 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c77f27e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 27 7f c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 13 b8 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 04 b8 5e}
037fh mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c7321e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 1e 32 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c77f27e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 27 7f c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 13 b8 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 04 b8 5e}
03bbh mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c7321d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 1d 32 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c77f27e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 27 7f c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 13 b8 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 04 b8 5e}
03f7h mov rax,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e4 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7321e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 1e 32 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrixBinaryRefOp<ushort> lookup<ushort>(BinaryBitLogicKind:byte kind)
; lookup_g8u[1054] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 10 31 7f c7 f7 7f 00 00 e8 d3 11 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 03 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 48 32 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 10 31 7f c7 f7 7f 00 00 e8 94 11 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 02 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 48 32 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 10 31 7f c7 f7 7f 00 00 e8 55 11 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 86 02 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 2a 32 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 10 31 7f c7 f7 7f 00 00 e8 16 11 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 47 02 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 29 32 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 10 31 7f c7 f7 7f 00 00 e8 d7 10 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 02 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 2a 32 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 10 31 7f c7 f7 7f 00 00 e8 98 10 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 01 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 2a 32 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 10 31 7f c7 f7 7f 00 00 e8 59 10 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8a 01 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 2a 32 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 10 31 7f c7 f7 7f 00 00 e8 1a 10 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b 01 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 29 32 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 10 31 7f c7 f7 7f 00 00 e8 db 0f b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c 01 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 2a 32 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 10 31 7f c7 f7 7f 00 00 e8 9c 0f b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd 00 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 29 32 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 10 31 7f c7 f7 7f 00 00 e8 5d 0f b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8e 00 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 2a 32 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 10 31 7f c7 f7 7f 00 00 e8 1e 0f b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4f 00 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 29 32 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 10 31 7f c7 f7 7f 00 00 e8 df 0e b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 10 00 b8 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 29 32 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 10 31 7f c7 f7 7f 00 00 e8 a0 0e b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 ff b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 2a 32 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 10 31 7f c7 f7 7f 00 00 e8 64 0e b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 ff b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 29 32 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 10 31 7f c7 f7 7f 00 00 e8 28 0e b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 ff b7 5e 48 b8 00 e4 23 c6 f7 7f 00 00 48 89 46 18 48 b8 68 2a 32 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c77f3110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 31 7f c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 11 b8 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 03 b8 5e}
004ch mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c73248d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 48 32 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c77f3110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 31 7f c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 11 b8 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 02 b8 5e}
008bh mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c73248e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 48 32 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c77f3110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 31 7f c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 11 b8 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 02 b8 5e}
00cah mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7322a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 2a 32 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c77f3110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 31 7f c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 11 b8 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 02 b8 5e}
0109h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c73229a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 29 32 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c77f3110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 31 7f c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 10 b8 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 02 b8 5e}
0148h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7322a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 2a 32 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c77f3110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 31 7f c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 10 b8 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 01 b8 5e}
0187h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c7322a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 2a 32 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c77f3110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 31 7f c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 10 b8 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 01 b8 5e}
01c6h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c7322a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 2a 32 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c77f3110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 31 7f c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 10 b8 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 01 b8 5e}
0205h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73229f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 29 32 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c77f3110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 31 7f c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 0f b8 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 01 b8 5e}
0244h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7322a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 2a 32 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c77f3110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 31 7f c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 0f b8 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 00 b8 5e}
0283h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c73229c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 29 32 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c77f3110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 31 7f c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 0f b8 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 00 b8 5e}
02c2h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c7322a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 32 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c77f3110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 31 7f c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 0f b8 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 00 b8 5e}
0301h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c73229e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 29 32 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c77f3110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 31 7f c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 0e b8 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 00 b8 5e}
0340h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c73229d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 29 32 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c77f3110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 31 7f c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 0e b8 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 ff b7 5e}
037fh mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c7322a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 2a 32 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c77f3110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 31 7f c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 0e b8 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 ff b7 5e}
03bbh mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c73229b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 29 32 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c77f3110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 31 7f c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 0e b8 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 ff b7 5e}
03f7h mov rax,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e4 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7322a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 2a 32 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrixBinaryRefOp<uint> lookup<uint>(BinaryBitLogicKind:byte kind)
; lookup_g8u[1054] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 e0 33 7f c7 f7 7f 00 00 e8 d3 0c b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 fe b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 49 32 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 e0 33 7f c7 f7 7f 00 00 e8 94 0c b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 fd b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 49 32 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 e0 33 7f c7 f7 7f 00 00 e8 55 0c b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 86 fd b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 2c 32 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 e0 33 7f c7 f7 7f 00 00 e8 16 0c b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 47 fd b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 2b 32 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 e0 33 7f c7 f7 7f 00 00 e8 d7 0b b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 fd b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 2b 32 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 e0 33 7f c7 f7 7f 00 00 e8 98 0b b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 fc b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 2b 32 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 e0 33 7f c7 f7 7f 00 00 e8 59 0b b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8a fc b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 2b 32 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 e0 33 7f c7 f7 7f 00 00 e8 1a 0b b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b fc b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 2b 32 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 e0 33 7f c7 f7 7f 00 00 e8 db 0a b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c fc b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 2b 32 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 e0 33 7f c7 f7 7f 00 00 e8 9c 0a b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd fb b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 2b 32 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 e0 33 7f c7 f7 7f 00 00 e8 5d 0a b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8e fb b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 2b 32 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e0 33 7f c7 f7 7f 00 00 e8 1e 0a b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4f fb b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 2b 32 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e0 33 7f c7 f7 7f 00 00 e8 df 09 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 10 fb b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 2b 32 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e0 33 7f c7 f7 7f 00 00 e8 a0 09 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 fa b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 2b 32 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e0 33 7f c7 f7 7f 00 00 e8 64 09 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 fa b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 2b 32 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e0 33 7f c7 f7 7f 00 00 e8 28 09 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 fa b7 5e 48 b8 00 e4 23 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 2b 32 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c77f33e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 33 7f c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 0c b8 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 fe b7 5e}
004ch mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c7324928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 49 32 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c77f33e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 33 7f c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 0c b8 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 fd b7 5e}
008bh mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7324938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 49 32 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c77f33e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 33 7f c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 0c b8 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 fd b7 5e}
00cah mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7322c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 2c 32 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c77f33e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 33 7f c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 0c b8 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 fd b7 5e}
0109h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c7322b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2b 32 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c77f33e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 33 7f c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 0b b8 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 fd b7 5e}
0148h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7322ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 2b 32 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c77f33e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 33 7f c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 0b b8 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 fc b7 5e}
0187h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c7322b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2b 32 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c77f33e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 33 7f c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 0b b8 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a fc b7 5e}
01c6h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c7322bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 2b 32 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c77f33e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 33 7f c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 0b b8 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b fc b7 5e}
0205h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c7322b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 2b 32 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c77f33e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 33 7f c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 0a b8 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c fc b7 5e}
0244h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7322be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 2b 32 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c77f33e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 33 7f c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 0a b8 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd fb b7 5e}
0283h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c7322b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 2b 32 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c77f33e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 33 7f c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 0a b8 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e fb b7 5e}
02c2h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c7322bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 2b 32 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c77f33e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 33 7f c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 0a b8 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f fb b7 5e}
0301h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c7322b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 2b 32 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c77f33e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 33 7f c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 09 b8 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 fb b7 5e}
0340h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c7322b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 2b 32 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c77f33e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 33 7f c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 09 b8 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 fa b7 5e}
037fh mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c7322bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 2b 32 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c77f33e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 33 7f c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 09 b8 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 fa b7 5e}
03bbh mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c7322b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 2b 32 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c77f33e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 33 7f c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 09 b8 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 fa b7 5e}
03f7h mov rax,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e4 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7322bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 2b 32 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrixBinaryRefOp<ulong> lookup<ulong>(BinaryBitLogicKind:byte kind)
; lookup_g8u[1054] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce 83 f9 0f 0f 87 08 04 00 00 8b c9 48 8d 05 81 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 b0 36 7f c7 f7 7f 00 00 e8 d3 07 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 f9 b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 49 32 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 b0 36 7f c7 f7 7f 00 00 e8 94 07 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 f8 b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 49 32 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 b0 36 7f c7 f7 7f 00 00 e8 55 07 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 86 f8 b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 46 32 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 b0 36 7f c7 f7 7f 00 00 e8 16 07 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 47 f8 b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 2c 32 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 b0 36 7f c7 f7 7f 00 00 e8 d7 06 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 f8 b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 45 32 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 b0 36 7f c7 f7 7f 00 00 e8 98 06 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 f7 b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 45 32 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 b0 36 7f c7 f7 7f 00 00 e8 59 06 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8a f7 b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 46 32 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 b0 36 7f c7 f7 7f 00 00 e8 1a 06 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b f7 b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 45 32 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 b0 36 7f c7 f7 7f 00 00 e8 db 05 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c f7 b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 46 32 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 b0 36 7f c7 f7 7f 00 00 e8 9c 05 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd f6 b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 2c 32 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 b0 36 7f c7 f7 7f 00 00 e8 5d 05 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8e f6 b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 46 32 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b0 36 7f c7 f7 7f 00 00 e8 1e 05 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4f f6 b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 2d 32 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b0 36 7f c7 f7 7f 00 00 e8 df 04 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 10 f6 b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 2c 32 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b0 36 7f c7 f7 7f 00 00 e8 a0 04 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 f5 b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 46 32 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b0 36 7f c7 f7 7f 00 00 e8 64 04 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 f5 b7 5e 48 b9 00 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 2c 32 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b0 36 7f c7 f7 7f 00 00 e8 28 04 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 f5 b7 5e 48 b8 00 e4 23 c6 f7 7f 00 00 48 89 46 18 48 b8 48 46 32 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0010h ja near ptr 041eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 08 04 00 00}
0016h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0018h lea rax,[rip+481h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 81 04 00 00}
001fh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0022h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002eh mov rcx,7ff7c77f36b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 36 7f c7 f7 7f 00 00}
0038h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 07 b8 5e}
003dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0040h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0044h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0047h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 f9 b7 5e}
004ch mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0056h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ah mov rcx,7ff7c7324980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 49 32 c7 f7 7f 00 00}
0064h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0068h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006dh mov rcx,7ff7c77f36b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 36 7f c7 f7 7f 00 00}
0077h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 07 b8 5e}
007ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0083h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0086h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 f8 b7 5e}
008bh mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0095h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0099h mov rcx,7ff7c7324990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 49 32 c7 f7 7f 00 00}
00a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a7h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00ach mov rcx,7ff7c77f36b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 36 7f c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 07 b8 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 f8 b7 5e}
00cah mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
00d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d8h mov rcx,7ff7c7324658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 46 32 c7 f7 7f 00 00}
00e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e6h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ebh mov rcx,7ff7c77f36b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 36 7f c7 f7 7f 00 00}
00f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 07 b8 5e}
00fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0101h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0104h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 f8 b7 5e}
0109h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0113h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0117h mov rcx,7ff7c7322cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 2c 32 c7 f7 7f 00 00}
0121h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0125h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012ah mov rcx,7ff7c77f36b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 36 7f c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 06 b8 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 f8 b7 5e}
0148h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c73245f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 45 32 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0169h mov rcx,7ff7c77f36b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 36 7f c7 f7 7f 00 00}
0173h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 06 b8 5e}
0178h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0182h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 f7 b7 5e}
0187h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0191h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0195h mov rcx,7ff7c73245e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 45 32 c7 f7 7f 00 00}
019fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a3h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a8h mov rcx,7ff7c77f36b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 36 7f c7 f7 7f 00 00}
01b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 06 b8 5e}
01b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a f7 b7 5e}
01c6h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
01d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d4h mov rcx,7ff7c7324608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 46 32 c7 f7 7f 00 00}
01deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e2h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e7h mov rcx,7ff7c77f36b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 36 7f c7 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 06 b8 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0200h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b f7 b7 5e}
0205h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
020fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0213h mov rcx,7ff7c73245d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 45 32 c7 f7 7f 00 00}
021dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0221h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0226h mov rcx,7ff7c77f36b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 36 7f c7 f7 7f 00 00}
0230h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 05 b8 5e}
0235h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0238h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c f7 b7 5e}
0244h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
024eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0252h mov rcx,7ff7c7324638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 46 32 c7 f7 7f 00 00}
025ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0260h jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0265h mov rcx,7ff7c77f36b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 36 7f c7 f7 7f 00 00}
026fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 05 b8 5e}
0274h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0277h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd f6 b7 5e}
0283h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
028dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0291h mov rcx,7ff7c7322ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 2c 32 c7 f7 7f 00 00}
029bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029fh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a4h mov rcx,7ff7c77f36b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 36 7f c7 f7 7f 00 00}
02aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 05 b8 5e}
02b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e f6 b7 5e}
02c2h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
02cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d0h mov rcx,7ff7c7324618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 46 32 c7 f7 7f 00 00}
02dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02deh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e3h mov rcx,7ff7c77f36b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 36 7f c7 f7 7f 00 00}
02edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 05 b8 5e}
02f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f f6 b7 5e}
0301h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
030bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030fh mov rcx,7ff7c7322d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 2d 32 c7 f7 7f 00 00}
0319h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031dh jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0322h mov rcx,7ff7c77f36b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 36 7f c7 f7 7f 00 00}
032ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 04 b8 5e}
0331h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0334h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 f6 b7 5e}
0340h mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
034ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034eh mov rcx,7ff7c7322cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 2c 32 c7 f7 7f 00 00}
0358h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035ch jmp near ptr 0413h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0361h mov rcx,7ff7c77f36b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 36 7f c7 f7 7f 00 00}
036bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 04 b8 5e}
0370h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0373h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0377h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 f5 b7 5e}
037fh mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
0389h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038dh mov rcx,7ff7c7324628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 46 32 c7 f7 7f 00 00}
0397h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039bh jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039dh mov rcx,7ff7c77f36b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 36 7f c7 f7 7f 00 00}
03a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 04 b8 5e}
03ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 f5 b7 5e}
03bbh mov rcx,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 23 c6 f7 7f 00 00}
03c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c9h mov rcx,7ff7c7322cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 2c 32 c7 f7 7f 00 00}
03d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d7h jmp short 0413h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d9h mov rcx,7ff7c77f36b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 36 7f c7 f7 7f 00 00}
03e3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 04 b8 5e}
03e8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ebh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03efh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 f5 b7 5e}
03f7h mov rax,7ff7c623e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e4 23 c6 f7 7f 00 00}
0401h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0405h mov rax,7ff7c7324648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 46 32 c7 f7 7f 00 00}
040fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0413h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0416h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
041ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041dh ret                                     ; RET || C3 || encoded[1]{c3}
