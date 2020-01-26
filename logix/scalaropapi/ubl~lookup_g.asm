------------------------------------------------------------------------------------------------------------------------
; UnaryOp<byte> lookup<byte>(UnaryBitLogicKind:byte kind)
; ubl~lookup_g8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 70 7a cc c6 f7 7f 00 00 e8 b7 7f 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 70 2f 5f 48 b8 20 e0 27 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 ee b9 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c6cc7a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 7a cc c6 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 7f 2f 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 70 2f 5f}
0038h mov rax,7ff7c627e020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e0 27 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c6b9eeb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 ee b9 c6 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<sbyte> lookup<sbyte>(UnaryBitLogicKind:byte kind)
; ubl~lookup_g8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 a0 7d cc c6 f7 7f 00 00 e8 67 7e 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 6f 2f 5f 48 b8 50 e0 27 c6 f7 7f 00 00 48 89 46 18 48 b8 30 ef b9 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c6cc7da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 7d cc c6 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 7e 2f 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 6f 2f 5f}
0038h mov rax,7ff7c627e050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e0 27 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c6b9ef30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 ef b9 c6 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<ushort> lookup<ushort>(UnaryBitLogicKind:byte kind)
; ubl~lookup_g8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 b0 7f cc c6 f7 7f 00 00 e8 17 7d 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 6e 2f 5f 48 b8 80 e0 27 c6 f7 7f 00 00 48 89 46 18 48 b8 70 ef b9 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c6cc7fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 7f cc c6 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 7d 2f 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 6e 2f 5f}
0038h mov rax,7ff7c627e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e0 27 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c6b9ef70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 ef b9 c6 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Int16> lookup<Int16>(UnaryBitLogicKind:byte kind)
; ubl~lookup_g8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 c0 81 cc c6 f7 7f 00 00 e8 c7 77 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 68 2f 5f 48 b8 b0 e0 27 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 ef b9 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c6cc81c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 81 cc c6 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 77 2f 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 68 2f 5f}
0038h mov rax,7ff7c627e0b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 e0 27 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c6b9efb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 ef b9 c6 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<uint> lookup<uint>(UnaryBitLogicKind:byte kind)
; ubl~lookup_g8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 d0 83 cc c6 f7 7f 00 00 e8 77 76 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 67 2f 5f 48 b8 e0 e0 27 c6 f7 7f 00 00 48 89 46 18 48 b8 f0 ef b9 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c6cc83d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 83 cc c6 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 76 2f 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 67 2f 5f}
0038h mov rax,7ff7c627e0e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e0 27 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c6b9eff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 ef b9 c6 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<int> lookup<int>(UnaryBitLogicKind:byte kind)
; ubl~lookup_g8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 e0 85 cc c6 f7 7f 00 00 e8 27 75 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 66 2f 5f 48 b8 d0 d0 27 c6 f7 7f 00 00 48 89 46 18 48 b8 30 f0 b9 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c6cc85e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 85 cc c6 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 75 2f 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 66 2f 5f}
0038h mov rax,7ff7c627d0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 d0 27 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c6b9f030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 f0 b9 c6 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<ulong> lookup<ulong>(UnaryBitLogicKind:byte kind)
; ubl~lookup_g8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 f0 87 cc c6 f7 7f 00 00 e8 d7 73 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 65 2f 5f 48 b8 10 e1 27 c6 f7 7f 00 00 48 89 46 18 48 b8 70 f0 b9 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c6cc87f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 87 cc c6 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 73 2f 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 65 2f 5f}
0038h mov rax,7ff7c627e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e1 27 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c6b9f070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 f0 b9 c6 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<long> lookup<long>(UnaryBitLogicKind:byte kind)
; ubl~lookup_g8u[96] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 00 8a cc c6 f7 7f 00 00 e8 87 72 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 63 2f 5f 48 b8 40 e1 27 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 f0 b9 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c6cc8a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8a cc c6 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 72 2f 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 63 2f 5f}
0038h mov rax,7ff7c627e140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e1 27 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c6b9f0b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 f0 b9 c6 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
