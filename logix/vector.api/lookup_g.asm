------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<byte>> lookup<byte>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 50 45 6d c7 f7 7f 00 00 e8 e7 11 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 03 b2 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 8f 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c76d4550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 45 6d c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 11 b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 03 b2 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7378fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 8f 37 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<sbyte>> lookup<sbyte>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 00 73 6d c7 f7 7f 00 00 e8 97 10 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 01 b2 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 50 90 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c76d7300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 73 6d c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 10 b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 01 b2 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7379050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 90 37 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<ushort>> lookup<ushort>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 00 47 6d c7 f7 7f 00 00 e8 47 0f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 00 b2 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a0 90 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c76d4700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 47 6d c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 0f b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 00 b2 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c73790a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 90 37 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<short>> lookup<short>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 20 51 6d c7 f7 7f 00 00 e8 f7 0d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 ff b1 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 f0 90 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c76d5120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 51 6d c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 0d b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 ff b1 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c73790f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 90 37 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<uint>> lookup<uint>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 b0 48 6d c7 f7 7f 00 00 e8 a7 0c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 fd b1 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 40 91 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c76d48b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 48 6d c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 0c b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 fd b1 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7379140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 91 37 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<int>> lookup<int>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 d0 52 6d c7 f7 7f 00 00 e8 57 0b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 88 fc b1 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 78 b1 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c76d52d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 52 6d c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 0b b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 fc b1 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c737b178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 b1 37 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<ulong>> lookup<ulong>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 80 28 6d c7 f7 7f 00 00 e8 07 0a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 fb b1 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 c8 b1 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c76d2880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 28 6d c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 0a b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 fb b1 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c737b1c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 b1 37 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<long>> lookup<long>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 b0 74 6d c7 f7 7f 00 00 e8 b7 08 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 f9 b1 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 18 b2 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c76d74b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 74 6d c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 08 b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 f9 b1 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c737b218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 b2 37 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<byte>> lookup<byte>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 10 4c 6d c7 f7 7f 00 00 e8 67 07 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 f8 b1 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 08 b3 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c76d4c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 4c 6d c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 07 b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 f8 b1 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c737b308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 b3 37 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 60 76 6d c7 f7 7f 00 00 e8 17 06 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 f7 b1 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 b3 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c76d7660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 76 6d c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 06 b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 f7 b1 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c737b3a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 b3 37 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<ushort>> lookup<ushort>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 c0 4d 6d c7 f7 7f 00 00 e8 c7 04 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 f5 b1 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 b3 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c76d4dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 4d 6d c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 04 b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 f5 b1 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c737b3f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 b3 37 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<short>> lookup<short>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 80 54 6d c7 f7 7f 00 00 e8 77 03 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 f4 b1 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 48 b4 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c76d5480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 54 6d c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 03 b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 f4 b1 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c737b448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 b4 37 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<uint>> lookup<uint>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 70 4f 6d c7 f7 7f 00 00 e8 27 02 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 f3 b1 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 98 b4 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c76d4f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 4f 6d c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 02 b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 f3 b1 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c737b498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 b4 37 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<int>> lookup<int>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 30 56 6d c7 f7 7f 00 00 e8 d7 00 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 f2 b1 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 b4 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c76d5630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 56 6d c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 00 b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 f2 b1 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c737b4e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 b4 37 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<ulong>> lookup<ulong>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 60 4a 6d c7 f7 7f 00 00 e8 87 ff b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 f0 b1 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 38 b5 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c76d4a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 4a 6d c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 ff b1 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 f0 b1 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c737b538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 b5 37 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector256<long>> lookup<long>(N256 w, UnaryBitLogicKind:byte kind)
; lookup_gn256_UnaryBitLogicKind~8u[74] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 48 93 6d c7 f7 7f 00 00 e8 37 fe b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 ef b1 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 08 c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0060h                          ; JE rel8 || 74 cb || encoded[2]{74 50}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne near ptr 00a6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 00 00 00}
001ah mov rcx,7ff7c76d9348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 93 6d c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 fe b1 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 ef b1 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h (bad)                                   ; <invalid> || <invalid> || encoded[4]{48 b8 08 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<byte>> lookup<byte>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 18 df 6a c7 f7 7f 00 00 e8 d0 fc b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 ee b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 18 c4 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c76adf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 df 6a c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 fc b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 ee b1 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c737c418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 c4 37 c7 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<sbyte>> lookup<sbyte>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e8 db 6a c7 f7 7f 00 00 e8 10 fb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 ec b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 98 c4 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c76adbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 db 6a c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 fb b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 ec b1 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c737c498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 c4 37 c7 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ushort>> lookup<ushort>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 88 d8 6a c7 f7 7f 00 00 e8 50 f9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 ea b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d8 c4 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c76ad888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d8 6a c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 f9 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 ea b1 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c737c4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 c4 37 c7 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<short>> lookup<short>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d8 d6 6a c7 f7 7f 00 00 e8 90 f7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 e8 b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 18 c5 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c76ad6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d6 6a c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 f7 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 e8 b1 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c737c518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 c5 37 c7 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<uint>> lookup<uint>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 08 eb 6a c7 f7 7f 00 00 e8 d0 f5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 e7 b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 58 c5 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c76aeb08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 eb 6a c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 f5 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 e7 b1 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c737c558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 c5 37 c7 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<int>> lookup<int>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d8 e7 6a c7 f7 7f 00 00 e8 10 f4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 e5 b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 98 c5 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c76ae7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e7 6a c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 f4 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 e5 b1 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c737c598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 c5 37 c7 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ulong>> lookup<ulong>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 48 e2 6a c7 f7 7f 00 00 e8 50 f2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 e3 b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d8 c5 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c76ae248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e2 6a c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 f2 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 e3 b1 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c737c5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 c5 37 c7 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<long>> lookup<long>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 38 ee 6a c7 f7 7f 00 00 e8 90 f0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 e1 b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 98 c6 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c76aee38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ee 6a c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 f0 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 e1 b1 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c737c698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 c6 37 c7 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<byte>> lookup<byte>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 10 17 6d c7 f7 7f 00 00 e8 d0 ea b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 dc b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 28 d7 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c76d1710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 17 6d c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 ea b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 dc b1 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c737d728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 d7 37 c7 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e0 13 6d c7 f7 7f 00 00 e8 10 e9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 da b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 d7 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c76d13e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 13 6d c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 e9 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 da b1 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c737d7a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 d7 37 c7 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ushort>> lookup<ushort>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f0 6d 6a c7 f7 7f 00 00 e8 50 e7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 d8 b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 d7 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c76a6df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6d 6a c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 e7 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 d8 b1 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c737d7e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 d7 37 c7 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<short>> lookup<short>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 38 da 6a c7 f7 7f 00 00 e8 90 e5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 d6 b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 28 d8 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c76ada38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 da 6a c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 e5 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 d6 b1 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c737d828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 d8 37 c7 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<uint>> lookup<uint>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 70 20 6d c7 f7 7f 00 00 e8 d0 e3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 d5 b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 68 d8 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c76d2070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 20 6d c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 e3 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 d5 b1 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c737d868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 d8 37 c7 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<int>> lookup<int>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 40 1d 6d c7 f7 7f 00 00 e8 10 e2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 d3 b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 d8 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c76d1d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 1d 6d c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 e2 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 d3 b1 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c737d8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 d8 37 c7 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ulong>> lookup<ulong>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d0 26 6d c7 f7 7f 00 00 e8 50 e0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 d1 b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 d8 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c76d26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 6d c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 e0 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 d1 b1 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c737d8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 d8 37 c7 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<long>> lookup<long>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a0 23 6d c7 f7 7f 00 00 e8 90 de b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 cf b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 88 e5 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0013h ja near ptr 0103h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ea 00 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 66 01 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c76d23a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 23 6d c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 de b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 cf b1 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c737e588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 e5 37 c7 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<byte>> lookup<byte>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 c8 81 8c c7 f7 7f 00 00 e8 ca dc b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb cd b1 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 50 7f 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0013h ja short 002dh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0015h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0017h lea rax,[rip+1bah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 ba 01 00 00}
001eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0021h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002dh cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0031h jne near ptr 014fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 18 01 00 00}
0037h mov rcx,7ff7c78c81c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 81 8c c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca dc b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb cd b1 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7387f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 7f 38 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<sbyte>> lookup<sbyte>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 38 87 8c c7 f7 7f 00 00 e8 ba da b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb cb b1 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 18 80 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0013h ja short 002dh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0015h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0017h lea rax,[rip+1bah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 ba 01 00 00}
001eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0021h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002dh cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0031h jne near ptr 014fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 18 01 00 00}
0037h mov rcx,7ff7c78c8738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 8c c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba da b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb cb b1 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7388018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 80 38 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<ushort>> lookup<ushort>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 c8 8a 8c c7 f7 7f 00 00 e8 aa d8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db c9 b1 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 90 80 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0013h ja short 002dh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0015h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0017h lea rax,[rip+1bah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 ba 01 00 00}
001eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0021h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002dh cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0031h jne near ptr 014fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 18 01 00 00}
0037h mov rcx,7ff7c78c8ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 8a 8c c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa d8 b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db c9 b1 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7388090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 80 38 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<short>> lookup<short>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 58 8e 8c c7 f7 7f 00 00 e8 9a d6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cb c7 b1 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 08 81 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0013h ja short 002dh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0015h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0017h lea rax,[rip+1bah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 ba 01 00 00}
001eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0021h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002dh cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0031h jne near ptr 014fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 18 01 00 00}
0037h mov rcx,7ff7c78c8e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 8e 8c c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a d6 b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb c7 b1 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7388108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 81 38 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<uint>> lookup<uint>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 e8 91 8c c7 f7 7f 00 00 e8 8a d0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb c1 b1 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 80 81 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0013h ja short 002dh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0015h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0017h lea rax,[rip+1bah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 ba 01 00 00}
001eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0021h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002dh cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0031h jne near ptr 014fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 18 01 00 00}
0037h mov rcx,7ff7c78c91e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 91 8c c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a d0 b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb c1 b1 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7388180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 81 38 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<int>> lookup<int>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 78 95 8c c7 f7 7f 00 00 e8 7a ce b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab bf b1 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 40 98 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0013h ja short 002dh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0015h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0017h lea rax,[rip+1bah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 ba 01 00 00}
001eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0021h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002dh cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0031h jne near ptr 014fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 18 01 00 00}
0037h mov rcx,7ff7c78c9578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 95 8c c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a ce b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab bf b1 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7389840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 98 38 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<ulong>> lookup<ulong>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 08 99 8c c7 f7 7f 00 00 e8 6a cc b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b bd b1 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 b8 98 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0013h ja short 002dh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0015h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0017h lea rax,[rip+1bah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 ba 01 00 00}
001eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0021h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002dh cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0031h jne near ptr 014fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 18 01 00 00}
0037h mov rcx,7ff7c78c9908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 99 8c c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a cc b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b bd b1 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c73898b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 98 38 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<long>> lookup<long>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 98 9c 8c c7 f7 7f 00 00 e8 5a ca b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b bb b1 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 30 99 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0013h ja short 002dh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0015h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0017h lea rax,[rip+1bah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 ba 01 00 00}
001eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0021h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002dh cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0031h jne near ptr 014fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 18 01 00 00}
0037h mov rcx,7ff7c78c9c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 9c 8c c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a ca b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b bb b1 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7389930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 99 38 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<byte>> lookup<byte>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 40 a4 8c c7 f7 7f 00 00 e8 4a c8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b b9 b1 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 50 9a 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0013h ja short 002dh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0015h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0017h lea rax,[rip+1bah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 ba 01 00 00}
001eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0021h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002dh cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0031h jne near ptr 014fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 18 01 00 00}
0037h mov rcx,7ff7c78ca440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a4 8c c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a c8 b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b b9 b1 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7389a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 9a 38 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<sbyte>> lookup<sbyte>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 b0 a9 8c c7 f7 7f 00 00 e8 3a c6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b b7 b1 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 18 9b 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0013h ja short 002dh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0015h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0017h lea rax,[rip+1bah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 ba 01 00 00}
001eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0021h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002dh cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0031h jne near ptr 014fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 18 01 00 00}
0037h mov rcx,7ff7c78ca9b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 a9 8c c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a c6 b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b b7 b1 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7389b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 9b 38 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<ushort>> lookup<ushort>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 40 ad 8c c7 f7 7f 00 00 e8 2a c4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b b5 b1 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 90 9b 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0013h ja short 002dh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0015h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0017h lea rax,[rip+1bah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 ba 01 00 00}
001eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0021h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002dh cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0031h jne near ptr 014fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 18 01 00 00}
0037h mov rcx,7ff7c78cad40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ad 8c c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a c4 b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b b5 b1 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7389b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 9b 38 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<short>> lookup<short>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 d0 b0 8c c7 f7 7f 00 00 e8 1a be b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b af b1 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 80 aa 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0013h ja short 002dh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0015h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0017h lea rax,[rip+1bah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 ba 01 00 00}
001eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0021h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002dh cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0031h jne near ptr 014fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 18 01 00 00}
0037h mov rcx,7ff7c78cb0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 b0 8c c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a be b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b af b1 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c738aa80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 aa 38 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<uint>> lookup<uint>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 60 b4 8c c7 f7 7f 00 00 e8 0a bc b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3b ad b1 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 aa 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0013h ja short 002dh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0015h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0017h lea rax,[rip+1bah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 ba 01 00 00}
001eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0021h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002dh cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0031h jne near ptr 014fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 18 01 00 00}
0037h mov rcx,7ff7c78cb460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 b4 8c c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a bc b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b ad b1 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c738aaf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 aa 38 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<int>> lookup<int>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 f0 b7 8c c7 f7 7f 00 00 e8 fa b9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2b ab b1 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 70 ab 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0013h ja short 002dh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0015h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0017h lea rax,[rip+1bah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 ba 01 00 00}
001eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0021h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002dh cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0031h jne near ptr 014fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 18 01 00 00}
0037h mov rcx,7ff7c78cb7f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 b7 8c c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa b9 b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b ab b1 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c738ab70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 ab 38 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<ulong>> lookup<ulong>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 80 bb 8c c7 f7 7f 00 00 e8 ea b7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b a9 b1 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 ab 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0013h ja short 002dh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0015h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0017h lea rax,[rip+1bah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 ba 01 00 00}
001eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0021h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002dh cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0031h jne near ptr 014fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 18 01 00 00}
0037h mov rcx,7ff7c78cbb80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 bb 8c c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea b7 b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b a9 b1 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c738abe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 ab 38 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<long>> lookup<long>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 10 bf 8c c7 f7 7f 00 00 e8 da b5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b a7 b1 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 60 ac 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0013h ja short 002dh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0015h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0017h lea rax,[rip+1bah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 ba 01 00 00}
001eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0021h lea rdx,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002dh cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0031h jne near ptr 014fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 18 01 00 00}
0037h mov rcx,7ff7c78cbf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 bf 8c c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da b5 b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b a7 b1 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c738ac60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 ac 38 c7 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<byte>> lookup<byte>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 18 df 6a c7 f7 7f 00 00 e8 d2 af b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 a1 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 e6 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 18 df 6a c7 f7 7f 00 00 e8 93 af b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 a0 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 e8 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 18 df 6a c7 f7 7f 00 00 e8 54 af b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 a0 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 e7 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 18 df 6a c7 f7 7f 00 00 e8 15 af b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 a0 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 e6 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 18 df 6a c7 f7 7f 00 00 e8 d6 ae b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 a0 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 e7 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 18 df 6a c7 f7 7f 00 00 e8 97 ae b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 9f b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 e7 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 18 df 6a c7 f7 7f 00 00 e8 58 ae b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 9f b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 e7 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 18 df 6a c7 f7 7f 00 00 e8 19 ae b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 9f b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 e6 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 18 df 6a c7 f7 7f 00 00 e8 da ad b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 9f b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 e7 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 18 df 6a c7 f7 7f 00 00 e8 9b ad b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 9e b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 e7 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 18 df 6a c7 f7 7f 00 00 e8 5c ad b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 9e b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 e6 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 18 df 6a c7 f7 7f 00 00 e8 1d ad b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 9e b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 e6 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 18 df 6a c7 f7 7f 00 00 e8 de ac b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 9e b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 e6 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 18 df 6a c7 f7 7f 00 00 e8 9f ac b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 9d b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 e7 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 18 df 6a c7 f7 7f 00 00 e8 63 ac b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 9d b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 e6 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 18 df 6a c7 f7 7f 00 00 e8 27 ac b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 9d b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d8 e7 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c76adf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 df 6a c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 af b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 a1 b1 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c737e638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e6 37 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76adf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 df 6a c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 af b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 a0 b1 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c737e818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e8 37 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76adf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 df 6a c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 af b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 a0 b1 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c737e7f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 e7 37 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76adf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 df 6a c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 af b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 a0 b1 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c737e658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e6 37 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76adf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 df 6a c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 ae b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 a0 b1 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c737e738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e7 37 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76adf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 df 6a c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 ae b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 9f b1 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c737e718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e7 37 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76adf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 df 6a c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 ae b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 9f b1 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c737e758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e7 37 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76adf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 df 6a c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 ae b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 9f b1 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c737e6f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 e6 37 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76adf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 df 6a c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da ad b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 9f b1 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c737e7b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 e7 37 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76adf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 df 6a c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b ad b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 9e b1 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c737e778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 e7 37 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76adf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 df 6a c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c ad b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 9e b1 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c737e698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e6 37 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76adf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 df 6a c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d ad b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 9e b1 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c737e6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e6 37 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76adf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 df 6a c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de ac b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 9e b1 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c737e6b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 e6 37 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76adf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 df 6a c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f ac b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 9d b1 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c737e798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e7 37 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76adf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 df 6a c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 ac b1 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 9d b1 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c737e678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 e6 37 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76adf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 df 6a c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 ac b1 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 9d b1 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c737e7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 e7 37 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<sbyte>> lookup<sbyte>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 e8 db 6a c7 f7 7f 00 00 e8 c2 aa b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 9b b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 ec 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 e8 db 6a c7 f7 7f 00 00 e8 83 aa b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 9b b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 ed 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 e8 db 6a c7 f7 7f 00 00 e8 44 aa b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 9b b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 ec 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 e8 db 6a c7 f7 7f 00 00 e8 05 aa b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 9b b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 ec 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 e8 db 6a c7 f7 7f 00 00 e8 c6 a9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 9a b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 ec 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 e8 db 6a c7 f7 7f 00 00 e8 87 a9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 9a b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 ec 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 e8 db 6a c7 f7 7f 00 00 e8 48 a9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 9a b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 ec 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 e8 db 6a c7 f7 7f 00 00 e8 09 a9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3a 9a b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 ec 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 e8 db 6a c7 f7 7f 00 00 e8 ca a8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb 99 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 ec 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 e8 db 6a c7 f7 7f 00 00 e8 8b a8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc 99 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 ec 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 e8 db 6a c7 f7 7f 00 00 e8 4c a8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7d 99 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 ec 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e8 db 6a c7 f7 7f 00 00 e8 0d a8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3e 99 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 ec 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e8 db 6a c7 f7 7f 00 00 e8 ce a7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ff 98 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 ec 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e8 db 6a c7 f7 7f 00 00 e8 8f a7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c0 98 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 ec 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e8 db 6a c7 f7 7f 00 00 e8 53 a7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 84 98 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 ec 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e8 db 6a c7 f7 7f 00 00 e8 17 a7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 98 b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 ec 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c76adbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 db 6a c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 aa b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 9b b1 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c737ec18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ec 37 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76adbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 db 6a c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 aa b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 9b b1 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c737ed08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ed 37 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76adbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 db 6a c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 aa b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 9b b1 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c737ecf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ec 37 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76adbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 db 6a c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 aa b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 9b b1 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c737ec28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ec 37 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76adbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 db 6a c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 a9 b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 9a b1 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c737ec98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ec 37 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76adbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 db 6a c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 a9 b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 9a b1 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c737ec88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ec 37 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76adbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 db 6a c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 a9 b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 9a b1 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c737eca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ec 37 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76adbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 db 6a c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 a9 b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 9a b1 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c737ec78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ec 37 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76adbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 db 6a c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca a8 b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 99 b1 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c737ecd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ec 37 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76adbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 db 6a c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b a8 b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 99 b1 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c737ecb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 ec 37 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76adbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 db 6a c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c a8 b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 99 b1 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c737ec48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ec 37 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76adbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 db 6a c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d a8 b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 99 b1 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c737ec68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ec 37 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76adbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 db 6a c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce a7 b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 98 b1 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c737ec58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 ec 37 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76adbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 db 6a c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f a7 b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 98 b1 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c737ecc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ec 37 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76adbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 db 6a c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 a7 b1 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 98 b1 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c737ec38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ec 37 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76adbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 db 6a c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 a7 b1 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 98 b1 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c737ece8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 ec 37 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ushort>> lookup<ushort>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 88 d8 6a c7 f7 7f 00 00 e8 b2 a5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 96 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 ed 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 88 d8 6a c7 f7 7f 00 00 e8 73 a5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 96 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 88 d8 6a c7 f7 7f 00 00 e8 34 a5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 96 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 88 d8 6a c7 f7 7f 00 00 e8 f5 a4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 96 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 ed 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 88 d8 6a c7 f7 7f 00 00 e8 b6 a4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 95 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 ed 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 88 d8 6a c7 f7 7f 00 00 e8 77 a4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 95 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 ed 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 88 d8 6a c7 f7 7f 00 00 e8 38 a4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 95 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 ed 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 88 d8 6a c7 f7 7f 00 00 e8 f9 a3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2a 95 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 ed 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 88 d8 6a c7 f7 7f 00 00 e8 ba a3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb 94 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 ed 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 88 d8 6a c7 f7 7f 00 00 e8 7b a3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac 94 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 ed 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 88 d8 6a c7 f7 7f 00 00 e8 3c a3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d 94 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 ed 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 88 d8 6a c7 f7 7f 00 00 e8 fd a2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2e 94 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 ed 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 88 d8 6a c7 f7 7f 00 00 e8 be a2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ef 93 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 ed 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 88 d8 6a c7 f7 7f 00 00 e8 7f a2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b0 93 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 ed 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 88 d8 6a c7 f7 7f 00 00 e8 43 a2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 93 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 ed 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 88 d8 6a c7 f7 7f 00 00 e8 07 a2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 93 b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 ed 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c76ad888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d8 6a c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 a5 b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 96 b1 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c737ed28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ed 37 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76ad888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d8 6a c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 a5 b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 96 b1 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c737ee18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ee 37 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76ad888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d8 6a c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 a5 b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 96 b1 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c737ee08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ee 37 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76ad888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d8 6a c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 a4 b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 96 b1 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c737ed38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ed 37 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76ad888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d8 6a c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 a4 b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 95 b1 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c737eda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ed 37 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76ad888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d8 6a c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 a4 b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 95 b1 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c737ed98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ed 37 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76ad888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d8 6a c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 a4 b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 95 b1 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c737edb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 ed 37 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76ad888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d8 6a c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 a3 b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 95 b1 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c737ed88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ed 37 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76ad888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d8 6a c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba a3 b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 94 b1 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c737ede8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ed 37 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76ad888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d8 6a c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b a3 b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 94 b1 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c737edc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ed 37 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76ad888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d8 6a c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c a3 b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 94 b1 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c737ed58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 ed 37 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76ad888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d8 6a c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd a2 b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 94 b1 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c737ed78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed 37 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76ad888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d8 6a c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be a2 b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 93 b1 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c737ed68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ed 37 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76ad888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d8 6a c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f a2 b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 93 b1 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c737edd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ed 37 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76ad888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d8 6a c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 a2 b1 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 93 b1 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c737ed48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ed 37 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76ad888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d8 6a c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 a2 b1 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 93 b1 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c737edf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 ed 37 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<short>> lookup<short>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 d8 d6 6a c7 f7 7f 00 00 e8 a2 a0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 91 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d8 d6 6a c7 f7 7f 00 00 e8 63 a0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 91 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 ef 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d8 d6 6a c7 f7 7f 00 00 e8 24 a0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 91 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 ef 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d8 d6 6a c7 f7 7f 00 00 e8 e5 9f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 16 91 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d8 d6 6a c7 f7 7f 00 00 e8 a6 9f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d7 90 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d8 d6 6a c7 f7 7f 00 00 e8 67 9f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 90 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d8 d6 6a c7 f7 7f 00 00 e8 28 9f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 90 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d8 d6 6a c7 f7 7f 00 00 e8 e9 9e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1a 90 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d8 d6 6a c7 f7 7f 00 00 e8 aa 9e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db 8f b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d8 d6 6a c7 f7 7f 00 00 e8 6b 9e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c 8f b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d8 d6 6a c7 f7 7f 00 00 e8 2c 9e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d 8f b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d8 d6 6a c7 f7 7f 00 00 e8 ed 9d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1e 8f b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d8 d6 6a c7 f7 7f 00 00 e8 ae 9d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 df 8e b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d8 d6 6a c7 f7 7f 00 00 e8 6f 9d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a0 8e b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 ee 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d8 d6 6a c7 f7 7f 00 00 e8 33 9d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 8e b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 ee 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d8 d6 6a c7 f7 7f 00 00 e8 f7 9c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 8e b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 08 ef 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c76ad6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d6 6a c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 a0 b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 91 b1 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c737ee38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ee 37 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76ad6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d6 6a c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 a0 b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 91 b1 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c737ef28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ef 37 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76ad6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d6 6a c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 a0 b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 91 b1 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c737ef18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ef 37 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76ad6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d6 6a c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 9f b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 91 b1 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c737ee48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ee 37 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76ad6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d6 6a c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 9f b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 90 b1 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c737eeb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 ee 37 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76ad6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d6 6a c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 9f b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 90 b1 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c737eea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ee 37 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76ad6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d6 6a c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 9f b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 90 b1 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c737eec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ee 37 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76ad6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d6 6a c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 9e b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 90 b1 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c737ee98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ee 37 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76ad6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d6 6a c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 9e b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 8f b1 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c737eef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ee 37 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76ad6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d6 6a c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 9e b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 8f b1 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c737eed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ee 37 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76ad6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d6 6a c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 9e b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 8f b1 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c737ee68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ee 37 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76ad6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d6 6a c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 9d b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 8f b1 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c737ee88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ee 37 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76ad6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d6 6a c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 9d b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 8e b1 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c737ee78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ee 37 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76ad6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d6 6a c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 9d b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 8e b1 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c737eee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ee 37 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76ad6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d6 6a c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 9d b1 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 8e b1 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c737ee58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 ee 37 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76ad6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d6 6a c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 9c b1 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 8e b1 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c737ef08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 ef 37 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<uint>> lookup<uint>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_BinaryBitLogicKind~8u[74] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 08 eb 6a c7 f7 7f 00 00 e8 92 9b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c76aeb08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 eb 6a c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 9b b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<int>> lookup<int>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 d8 e7 6a c7 f7 7f 00 00 e8 82 96 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 87 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d8 e7 6a c7 f7 7f 00 00 e8 43 96 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 87 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 fc 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d8 e7 6a c7 f7 7f 00 00 e8 04 96 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 87 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 fc 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d8 e7 6a c7 f7 7f 00 00 e8 c5 95 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 86 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d8 e7 6a c7 f7 7f 00 00 e8 86 95 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 86 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 fc 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d8 e7 6a c7 f7 7f 00 00 e8 47 95 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 86 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 fc 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d8 e7 6a c7 f7 7f 00 00 e8 08 95 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 86 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 fc 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d8 e7 6a c7 f7 7f 00 00 e8 c9 94 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa 85 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 fc 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d8 e7 6a c7 f7 7f 00 00 e8 8a 94 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb 85 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 fc 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d8 e7 6a c7 f7 7f 00 00 e8 4b 94 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c 85 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 fc 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d8 e7 6a c7 f7 7f 00 00 e8 0c 94 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d 85 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 fc 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d8 e7 6a c7 f7 7f 00 00 e8 cd 93 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe 84 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 fc 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d8 e7 6a c7 f7 7f 00 00 e8 8e 93 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf 84 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 fc 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d8 e7 6a c7 f7 7f 00 00 e8 4f 93 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 80 84 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 fc 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d8 e7 6a c7 f7 7f 00 00 e8 13 93 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 84 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 fc 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d8 e7 6a c7 f7 7f 00 00 e8 d7 92 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 84 b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 fc 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c76ae7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e7 6a c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 96 b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 87 b1 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c737fbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 fb 37 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76ae7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e7 6a c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 96 b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 87 b1 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c737fcd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 fc 37 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76ae7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e7 6a c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 96 b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 87 b1 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c737fcc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 fc 37 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76ae7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e7 6a c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 95 b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 86 b1 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c737fbf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 fb 37 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76ae7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e7 6a c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 95 b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 86 b1 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c737fc60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 fc 37 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76ae7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e7 6a c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 95 b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 86 b1 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c737fc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fc 37 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76ae7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e7 6a c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 95 b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 86 b1 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c737fc70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 fc 37 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76ae7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e7 6a c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 94 b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 85 b1 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c737fc40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 fc 37 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76ae7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e7 6a c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 94 b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 85 b1 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c737fca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 fc 37 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76ae7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e7 6a c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 94 b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 85 b1 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c737fc80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 fc 37 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76ae7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e7 6a c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 94 b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 85 b1 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c737fc10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 fc 37 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76ae7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e7 6a c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 93 b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 84 b1 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c737fc30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 fc 37 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76ae7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e7 6a c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 93 b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 84 b1 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c737fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 37 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76ae7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e7 6a c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 93 b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 84 b1 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c737fc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fc 37 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76ae7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e7 6a c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 93 b1 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 84 b1 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c737fc00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fc 37 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76ae7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e7 6a c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 92 b1 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 84 b1 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c737fcb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 fc 37 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ulong>> lookup<ulong>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 48 e2 6a c7 f7 7f 00 00 e8 72 91 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 82 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 fc 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 48 e2 6a c7 f7 7f 00 00 e8 33 91 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 82 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 fd 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 48 e2 6a c7 f7 7f 00 00 e8 f4 90 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 82 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 fd 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 48 e2 6a c7 f7 7f 00 00 e8 b5 90 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 81 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 fd 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 48 e2 6a c7 f7 7f 00 00 e8 76 90 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 81 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 fd 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 48 e2 6a c7 f7 7f 00 00 e8 37 90 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 81 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 fd 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 48 e2 6a c7 f7 7f 00 00 e8 f8 8f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 81 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 fd 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 48 e2 6a c7 f7 7f 00 00 e8 b9 8f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea 80 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 fd 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 48 e2 6a c7 f7 7f 00 00 e8 7a 8f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab 80 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 fd 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 48 e2 6a c7 f7 7f 00 00 e8 3b 8f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c 80 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 fd 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 48 e2 6a c7 f7 7f 00 00 e8 fc 8e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d 80 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 fd 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 48 e2 6a c7 f7 7f 00 00 e8 bd 8e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee 7f b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 fd 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 48 e2 6a c7 f7 7f 00 00 e8 7e 8e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 af 7f b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 fd 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 48 e2 6a c7 f7 7f 00 00 e8 3f 8e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 70 7f b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 fd 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 48 e2 6a c7 f7 7f 00 00 e8 03 8e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 7f b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 fd 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 48 e2 6a c7 f7 7f 00 00 e8 c7 8d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 7e b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 c0 fd 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c76ae248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e2 6a c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 91 b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 82 b1 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c737fcf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 fc 37 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76ae248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e2 6a c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 91 b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 82 b1 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c737fde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 fd 37 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76ae248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e2 6a c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 90 b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 82 b1 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c737fdd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 fd 37 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76ae248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e2 6a c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 90 b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 81 b1 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c737fd00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fd 37 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76ae248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e2 6a c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 90 b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 81 b1 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c737fd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 fd 37 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76ae248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e2 6a c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 90 b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 81 b1 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c737fd60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 fd 37 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76ae248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e2 6a c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 8f b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 81 b1 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c737fd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 fd 37 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76ae248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e2 6a c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 8f b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 80 b1 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c737fd50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fd 37 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76ae248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e2 6a c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 8f b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 80 b1 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c737fdb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 fd 37 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76ae248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e2 6a c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 8f b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 80 b1 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c737fd90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fd 37 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76ae248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e2 6a c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 8e b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 80 b1 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c737fd20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fd 37 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76ae248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e2 6a c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 8e b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 7f b1 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c737fd40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 fd 37 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76ae248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e2 6a c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 8e b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 7f b1 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c737fd30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 fd 37 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76ae248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e2 6a c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 8e b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 7f b1 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c737fda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 fd 37 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76ae248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e2 6a c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 8e b1 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 7f b1 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c737fd10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 fd 37 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76ae248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e2 6a c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 8d b1 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 7e b1 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c737fdc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 fd 37 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<long>> lookup<long>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 38 ee 6a c7 f7 7f 00 00 e8 62 8c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 7d b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 fe 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 38 ee 6a c7 f7 7f 00 00 e8 23 8c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 7d b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 fe 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 38 ee 6a c7 f7 7f 00 00 e8 e4 8b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 7d b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 fe 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 38 ee 6a c7 f7 7f 00 00 e8 a5 8b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 7c b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 fe 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 38 ee 6a c7 f7 7f 00 00 e8 66 8b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 7c b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 fe 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 38 ee 6a c7 f7 7f 00 00 e8 27 8b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 7c b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 fe 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 38 ee 6a c7 f7 7f 00 00 e8 e8 8a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 7c b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 fe 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 38 ee 6a c7 f7 7f 00 00 e8 a9 8a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 da 7b b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 fe 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 38 ee 6a c7 f7 7f 00 00 e8 6a 8a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b 7b b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 fe 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 38 ee 6a c7 f7 7f 00 00 e8 2b 8a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c 7b b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 fe 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 38 ee 6a c7 f7 7f 00 00 e8 ec 89 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d 7b b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 fe 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 38 ee 6a c7 f7 7f 00 00 e8 ad 89 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 de 7a b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 fe 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 38 ee 6a c7 f7 7f 00 00 e8 6e 89 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f 7a b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 fe 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 38 ee 6a c7 f7 7f 00 00 e8 2f 89 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 7a b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 fe 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 38 ee 6a c7 f7 7f 00 00 e8 f3 88 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 7a b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 fe 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 38 ee 6a c7 f7 7f 00 00 e8 b7 88 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 79 b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 fe 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c76aee38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ee 6a c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 8c b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 7d b1 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c737fe00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fe 37 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76aee38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ee 6a c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 8c b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 7d b1 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c737fef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 fe 37 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76aee38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ee 6a c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 8b b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 7d b1 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c737fee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 fe 37 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76aee38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ee 6a c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 8b b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 7c b1 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c737fe10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 fe 37 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76aee38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ee 6a c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 8b b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 7c b1 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c737fe80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 fe 37 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76aee38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ee 6a c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 8b b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 7c b1 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c737fe70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 fe 37 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76aee38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ee 6a c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 8a b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 7c b1 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c737fe90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fe 37 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76aee38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ee 6a c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 8a b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 7b b1 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c737fe60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 fe 37 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76aee38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ee 6a c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 8a b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 7b b1 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c737fec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 fe 37 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76aee38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ee 6a c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 8a b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 7b b1 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c737fea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 fe 37 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76aee38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ee 6a c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 89 b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 7b b1 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c737fe30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 fe 37 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76aee38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ee 6a c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 89 b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 7a b1 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c737fe50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fe 37 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76aee38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ee 6a c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 89 b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 7a b1 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c737fe40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 fe 37 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76aee38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ee 6a c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 89 b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 7a b1 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c737feb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 fe 37 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76aee38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ee 6a c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 88 b1 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 7a b1 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c737fe20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fe 37 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76aee38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ee 6a c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 88 b1 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 79 b1 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c737fed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 fe 37 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<byte>> lookup<byte>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 10 17 6d c7 f7 7f 00 00 e8 52 87 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 78 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 0b 38 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 10 17 6d c7 f7 7f 00 00 e8 13 87 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 78 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 0d 38 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 10 17 6d c7 f7 7f 00 00 e8 d4 86 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 78 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 0c 38 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 10 17 6d c7 f7 7f 00 00 e8 95 86 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 77 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 0b 38 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 10 17 6d c7 f7 7f 00 00 e8 56 86 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 77 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 0c 38 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 10 17 6d c7 f7 7f 00 00 e8 17 86 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 77 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 0c 38 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 10 17 6d c7 f7 7f 00 00 e8 d8 85 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 77 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 0c 38 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 10 17 6d c7 f7 7f 00 00 e8 99 85 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca 76 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 0b 38 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 10 17 6d c7 f7 7f 00 00 e8 5a 85 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b 76 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 0c 38 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 10 17 6d c7 f7 7f 00 00 e8 1b 85 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c 76 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 0c 38 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 10 17 6d c7 f7 7f 00 00 e8 dc 84 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d 76 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 0b 38 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 10 17 6d c7 f7 7f 00 00 e8 9d 84 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce 75 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 0b 38 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 10 17 6d c7 f7 7f 00 00 e8 5e 84 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f 75 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 0b 38 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 10 17 6d c7 f7 7f 00 00 e8 1f 84 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 75 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 0c 38 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 10 17 6d c7 f7 7f 00 00 e8 e3 83 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 75 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 0b 38 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 10 17 6d c7 f7 7f 00 00 e8 a7 83 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 74 b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 0c 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c76d1710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 17 6d c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 87 b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 78 b1 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7380b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 0b 38 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76d1710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 17 6d c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 87 b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 78 b1 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7380d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 0d 38 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76d1710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 17 6d c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 86 b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 78 b1 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c7380cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 0c 38 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76d1710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 17 6d c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 86 b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 77 b1 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7380b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 0b 38 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76d1710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 17 6d c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 86 b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 77 b1 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c7380c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 0c 38 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76d1710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 17 6d c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 86 b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 77 b1 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7380c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 0c 38 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76d1710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 17 6d c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 85 b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 77 b1 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c7380c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 0c 38 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76d1710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 17 6d c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 85 b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 76 b1 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7380bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 0b 38 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76d1710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 17 6d c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 85 b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 76 b1 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c7380cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 0c 38 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76d1710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 17 6d c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 85 b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 76 b1 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c7380c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 0c 38 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76d1710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 17 6d c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 84 b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 76 b1 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7380b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 0b 38 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76d1710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 17 6d c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 84 b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 75 b1 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7380bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 0b 38 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76d1710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 17 6d c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 84 b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 75 b1 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7380bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 0b 38 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76d1710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 17 6d c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 84 b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 75 b1 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c7380c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 0c 38 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76d1710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 17 6d c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 83 b1 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 75 b1 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c7380b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 0b 38 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76d1710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 17 6d c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 83 b1 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 74 b1 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c7380cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 0c 38 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 e0 13 6d c7 f7 7f 00 00 e8 42 82 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 73 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 0e 38 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 e0 13 6d c7 f7 7f 00 00 e8 03 82 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 73 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 0f 38 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 e0 13 6d c7 f7 7f 00 00 e8 c4 81 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 72 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 0e 38 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 e0 13 6d c7 f7 7f 00 00 e8 85 81 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 72 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 0e 38 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 e0 13 6d c7 f7 7f 00 00 e8 46 81 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 72 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 0e 38 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 e0 13 6d c7 f7 7f 00 00 e8 07 81 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 72 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 0e 38 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 e0 13 6d c7 f7 7f 00 00 e8 c8 80 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 71 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 0e 38 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 e0 13 6d c7 f7 7f 00 00 e8 89 80 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba 71 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 0e 38 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 e0 13 6d c7 f7 7f 00 00 e8 4a 80 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b 71 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 0e 38 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 e0 13 6d c7 f7 7f 00 00 e8 0b 80 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c 71 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 0e 38 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 e0 13 6d c7 f7 7f 00 00 e8 cc 7f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd 70 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 0e 38 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e0 13 6d c7 f7 7f 00 00 e8 8d 7f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be 70 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 0e 38 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e0 13 6d c7 f7 7f 00 00 e8 4e 7f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f 70 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 0e 38 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e0 13 6d c7 f7 7f 00 00 e8 0f 7f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 70 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 0e 38 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e0 13 6d c7 f7 7f 00 00 e8 d3 7e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 70 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 0e 38 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e0 13 6d c7 f7 7f 00 00 e8 97 7e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 6f b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e0 0e 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c76d13e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 13 6d c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 82 b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 73 b1 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7380e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 0e 38 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76d13e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 13 6d c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 82 b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 73 b1 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7380f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 0f 38 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76d13e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 13 6d c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 81 b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 72 b1 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c7380ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 0e 38 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76d13e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 13 6d c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 81 b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 72 b1 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7380e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 0e 38 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76d13e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 13 6d c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 81 b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 72 b1 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c7380e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 0e 38 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76d13e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 13 6d c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 81 b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 72 b1 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7380e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 0e 38 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76d13e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 13 6d c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 80 b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 71 b1 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c7380ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 0e 38 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76d13e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 13 6d c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 80 b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 71 b1 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7380e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 0e 38 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76d13e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 13 6d c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 80 b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 71 b1 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c7380ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 0e 38 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76d13e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 13 6d c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 80 b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 71 b1 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c7380eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 0e 38 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76d13e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 13 6d c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 7f b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 70 b1 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7380e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 0e 38 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76d13e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 13 6d c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 7f b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 70 b1 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7380e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 0e 38 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76d13e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 13 6d c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 7f b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 70 b1 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7380e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 0e 38 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76d13e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 13 6d c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 7f b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 70 b1 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c7380ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 0e 38 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76d13e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 13 6d c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 7e b1 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 70 b1 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c7380e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 0e 38 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76d13e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 13 6d c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 7e b1 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 6f b1 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c7380ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 0e 38 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ushort>> lookup<ushort>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_BinaryBitLogicKind~8u[938] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 f0 6d 6a c7 f7 7f 00 00 e8 32 7d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 6e b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 f0 6d 6a c7 f7 7f 00 00 e8 f3 7c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 6e b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 f0 6d 6a c7 f7 7f 00 00 e8 b4 7c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 6d b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 f0 6d 6a c7 f7 7f 00 00 e8 75 7c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 6d b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 f0 6d 6a c7 f7 7f 00 00 e8 36 7c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 6d b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 f0 6d 6a c7 f7 7f 00 00 e8 f7 7b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 6d b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 f0 6d 6a c7 f7 7f 00 00 e8 b8 7b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 6c b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 f0 6d 6a c7 f7 7f 00 00 e8 79 7b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa 6c b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 f0 6d 6a c7 f7 7f 00 00 e8 3a 7b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b 6c b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 f0 6d 6a c7 f7 7f 00 00 e8 fb 7a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 6c b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 f0 6d 6a c7 f7 7f 00 00 e8 bc 7a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed 6b b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f0 6d 6a c7 f7 7f 00 00 e8 7d 7a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae 6b b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f0 6d 6a c7 f7 7f 00 00 e8 3e 7a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f 6b b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f0 6d 6a c7 f7 7f 00 00 e8 ff 79 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 6b b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 15 38 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f0 6d 6a c7 f7 7f 00 00 e8 c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c76a6df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6d 6a c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 7d b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 6e b1 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7381508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 15 38 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76a6df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6d 6a c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 7c b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 6e b1 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c73815f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 15 38 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76a6df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6d 6a c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 7c b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 6d b1 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c73815e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 15 38 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76a6df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6d 6a c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 7c b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 6d b1 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7381518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 15 38 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76a6df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6d 6a c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 7c b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 6d b1 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c7381588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 15 38 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76a6df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6d 6a c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 7b b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 6d b1 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7381578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 15 38 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76a6df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6d 6a c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 7b b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 6c b1 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c7381598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 15 38 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76a6df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6d 6a c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 7b b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 6c b1 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7381568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 15 38 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76a6df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6d 6a c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 7b b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 6c b1 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c73815c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 15 38 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76a6df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6d 6a c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 7a b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 6c b1 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c73815a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 15 38 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76a6df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6d 6a c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 7a b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 6b b1 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7381538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 15 38 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76a6df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6d 6a c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 7a b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 6b b1 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7381558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 15 38 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76a6df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6d 6a c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 7a b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 6b b1 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7381548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 15 38 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76a6df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6d 6a c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 79 b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 6b b1 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c73815b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 15 38 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76a6df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6d 6a c7 f7 7f 00 00}
03a8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<short>> lookup<short>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 38 da 6a c7 f7 7f 00 00 e8 22 78 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 69 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 16 38 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 38 da 6a c7 f7 7f 00 00 e8 e3 77 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 69 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 17 38 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 38 da 6a c7 f7 7f 00 00 e8 a4 77 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 68 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 16 38 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 38 da 6a c7 f7 7f 00 00 e8 65 77 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 68 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 16 38 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 38 da 6a c7 f7 7f 00 00 e8 26 77 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 68 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 16 38 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 38 da 6a c7 f7 7f 00 00 e8 e7 76 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 68 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 16 38 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 38 da 6a c7 f7 7f 00 00 e8 a8 76 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 67 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 16 38 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 38 da 6a c7 f7 7f 00 00 e8 69 76 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a 67 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 16 38 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 38 da 6a c7 f7 7f 00 00 e8 2a 76 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b 67 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 16 38 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 38 da 6a c7 f7 7f 00 00 e8 eb 75 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 67 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 16 38 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 38 da 6a c7 f7 7f 00 00 e8 ac 75 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd 66 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 16 38 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 38 da 6a c7 f7 7f 00 00 e8 6d 75 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e 66 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 16 38 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 38 da 6a c7 f7 7f 00 00 e8 2e 75 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f 66 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 16 38 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 38 da 6a c7 f7 7f 00 00 e8 ef 74 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 66 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 16 38 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 38 da 6a c7 f7 7f 00 00 e8 b3 74 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 65 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 16 38 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 38 da 6a c7 f7 7f 00 00 e8 77 74 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 65 b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 16 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c76ada38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 da 6a c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 78 b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 69 b1 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7381618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 16 38 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76ada38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 da 6a c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 77 b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 69 b1 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7381708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 17 38 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76ada38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 da 6a c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 77 b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 68 b1 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c73816f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 16 38 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76ada38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 da 6a c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 77 b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 68 b1 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7381628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 16 38 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76ada38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 da 6a c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 77 b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 68 b1 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c7381698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 38 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76ada38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 da 6a c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 76 b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 68 b1 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7381688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 16 38 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76ada38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 da 6a c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 76 b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 67 b1 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c73816a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 16 38 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76ada38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 da 6a c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 76 b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 67 b1 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7381678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 16 38 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76ada38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 da 6a c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 76 b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 67 b1 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c73816d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 16 38 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76ada38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 da 6a c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 75 b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 67 b1 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c73816b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 16 38 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76ada38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 da 6a c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 75 b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 66 b1 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7381648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 16 38 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76ada38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 da 6a c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 75 b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 66 b1 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7381668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 16 38 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76ada38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 da 6a c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 75 b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 66 b1 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7381658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 16 38 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76ada38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 da 6a c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 74 b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 66 b1 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c73816c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 16 38 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76ada38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 da 6a c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 74 b1 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 65 b1 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c7381638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 16 38 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76ada38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 da 6a c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 74 b1 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 65 b1 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c73816e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 16 38 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<uint>> lookup<uint>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 70 20 6d c7 f7 7f 00 00 e8 12 73 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 64 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 17 38 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 70 20 6d c7 f7 7f 00 00 e8 d3 72 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 64 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 18 38 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 70 20 6d c7 f7 7f 00 00 e8 94 72 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 63 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 18 38 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 70 20 6d c7 f7 7f 00 00 e8 55 72 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 86 63 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 17 38 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 70 20 6d c7 f7 7f 00 00 e8 16 72 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 47 63 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 17 38 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 70 20 6d c7 f7 7f 00 00 e8 d7 71 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 63 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 17 38 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 70 20 6d c7 f7 7f 00 00 e8 98 71 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 62 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 17 38 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 70 20 6d c7 f7 7f 00 00 e8 59 71 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8a 62 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 17 38 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 70 20 6d c7 f7 7f 00 00 e8 1a 71 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b 62 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 17 38 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 70 20 6d c7 f7 7f 00 00 e8 db 70 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c 62 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 17 38 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 70 20 6d c7 f7 7f 00 00 e8 9c 70 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd 61 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 17 38 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 70 20 6d c7 f7 7f 00 00 e8 5d 70 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8e 61 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 17 38 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 70 20 6d c7 f7 7f 00 00 e8 1e 70 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4f 61 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 17 38 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 70 20 6d c7 f7 7f 00 00 e8 df 6f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 10 61 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 17 38 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 70 20 6d c7 f7 7f 00 00 e8 a3 6f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 60 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 17 38 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 70 20 6d c7 f7 7f 00 00 e8 67 6f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 60 b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 17 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c76d2070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 20 6d c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 73 b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 64 b1 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7381728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 17 38 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76d2070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 20 6d c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 72 b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 64 b1 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7381818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 18 38 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76d2070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 20 6d c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 72 b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 63 b1 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c7381808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 18 38 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76d2070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 20 6d c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 72 b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 63 b1 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7381738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 17 38 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76d2070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 20 6d c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 72 b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 63 b1 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c73817a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 17 38 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76d2070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 20 6d c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 71 b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 63 b1 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7381798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 17 38 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76d2070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 20 6d c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 71 b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 62 b1 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c73817b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 17 38 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76d2070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 20 6d c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 71 b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 62 b1 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7381788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 17 38 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76d2070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 20 6d c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 71 b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 62 b1 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c73817e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 17 38 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76d2070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 20 6d c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 70 b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 62 b1 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c73817c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 17 38 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76d2070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 20 6d c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 70 b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 61 b1 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7381758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 17 38 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76d2070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 20 6d c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 70 b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 61 b1 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7381778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 17 38 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76d2070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 20 6d c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 70 b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 61 b1 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7381768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 17 38 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76d2070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 20 6d c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 6f b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 61 b1 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c73817d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 17 38 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76d2070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 20 6d c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 6f b1 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 60 b1 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c7381748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 17 38 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76d2070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 20 6d c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 6f b1 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 60 b1 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c73817f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 17 38 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<int>> lookup<int>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_BinaryBitLogicKind~8u[122] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 40 1d 6d c7 f7 7f 00 00 e8 02 6e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 5f b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 18 38 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 40 1d 6d c7 f7 7f 00 00 e8 c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c76d1d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 1d 6d c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 6e b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 5f b1 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7381838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 18 38 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76d1d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 1d 6d c7 f7 7f 00 00}
0078h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ulong>> lookup<ulong>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 d0 26 6d c7 f7 7f 00 00 e8 f2 68 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 5a b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 22 38 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d0 26 6d c7 f7 7f 00 00 e8 b3 68 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 59 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 23 38 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d0 26 6d c7 f7 7f 00 00 e8 74 68 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 59 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 22 38 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d0 26 6d c7 f7 7f 00 00 e8 35 68 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 66 59 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 22 38 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d0 26 6d c7 f7 7f 00 00 e8 f6 67 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 27 59 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 22 38 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d0 26 6d c7 f7 7f 00 00 e8 b7 67 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 58 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 22 38 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d0 26 6d c7 f7 7f 00 00 e8 78 67 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 58 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 22 38 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d0 26 6d c7 f7 7f 00 00 e8 39 67 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6a 58 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 22 38 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d0 26 6d c7 f7 7f 00 00 e8 fa 66 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2b 58 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 22 38 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d0 26 6d c7 f7 7f 00 00 e8 bb 66 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec 57 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 22 38 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d0 26 6d c7 f7 7f 00 00 e8 7c 66 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad 57 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 22 38 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d0 26 6d c7 f7 7f 00 00 e8 3d 66 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6e 57 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 22 38 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d0 26 6d c7 f7 7f 00 00 e8 fe 65 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2f 57 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 22 38 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d0 26 6d c7 f7 7f 00 00 e8 bf 65 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f0 56 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 22 38 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d0 26 6d c7 f7 7f 00 00 e8 83 65 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 56 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 22 38 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d0 26 6d c7 f7 7f 00 00 e8 47 65 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 56 b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 22 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c76d26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 6d c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 68 b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 5a b1 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7382218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 22 38 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76d26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 6d c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 68 b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 59 b1 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7382308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 23 38 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76d26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 6d c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 68 b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 59 b1 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c73822f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 22 38 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76d26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 6d c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 68 b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 59 b1 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7382228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 22 38 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76d26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 6d c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 67 b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 59 b1 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c7382298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 22 38 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76d26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 6d c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 67 b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 58 b1 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7382288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 22 38 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76d26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 6d c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 67 b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 58 b1 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c73822a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 22 38 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76d26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 6d c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 67 b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 58 b1 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7382278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 22 38 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76d26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 6d c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 66 b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 58 b1 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c73822d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 22 38 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76d26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 6d c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 66 b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 57 b1 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c73822b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 22 38 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76d26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 6d c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 66 b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 57 b1 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7382248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 22 38 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76d26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 6d c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 66 b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 57 b1 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7382268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 22 38 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76d26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 6d c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 65 b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 57 b1 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7382258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 22 38 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76d26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 6d c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 65 b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 56 b1 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c73822c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 22 38 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76d26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 6d c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 65 b1 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 56 b1 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c7382238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 22 38 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76d26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 6d c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 65 b1 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 56 b1 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c73822e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 22 38 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<long>> lookup<long>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 a0 23 6d c7 f7 7f 00 00 e8 e2 63 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 55 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 23 38 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a0 23 6d c7 f7 7f 00 00 e8 a3 63 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 54 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 24 38 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a0 23 6d c7 f7 7f 00 00 e8 64 63 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 54 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 24 38 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a0 23 6d c7 f7 7f 00 00 e8 25 63 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 54 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 23 38 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a0 23 6d c7 f7 7f 00 00 e8 e6 62 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 54 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 23 38 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a0 23 6d c7 f7 7f 00 00 e8 a7 62 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 53 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 23 38 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a0 23 6d c7 f7 7f 00 00 e8 68 62 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 53 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 23 38 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a0 23 6d c7 f7 7f 00 00 e8 29 62 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a 53 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 23 38 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a0 23 6d c7 f7 7f 00 00 e8 ea 61 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b 53 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 23 38 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a0 23 6d c7 f7 7f 00 00 e8 ab 61 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dc 52 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 23 38 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a0 23 6d c7 f7 7f 00 00 e8 6c 61 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d 52 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 23 38 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a0 23 6d c7 f7 7f 00 00 e8 2d 61 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5e 52 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 23 38 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a0 23 6d c7 f7 7f 00 00 e8 ee 60 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1f 52 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 23 38 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a0 23 6d c7 f7 7f 00 00 e8 af 60 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e0 51 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 23 38 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a0 23 6d c7 f7 7f 00 00 e8 73 60 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 51 b1 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 23 38 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a0 23 6d c7 f7 7f 00 00 e8 37 60 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 51 b1 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 23 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c76d23a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 23 6d c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 63 b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 55 b1 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7382328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 23 38 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76d23a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 23 6d c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 63 b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 54 b1 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7382418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 24 38 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76d23a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 23 6d c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 63 b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 54 b1 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c7382408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 24 38 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76d23a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 23 6d c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 63 b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 54 b1 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7382338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 23 38 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76d23a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 23 6d c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 62 b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 54 b1 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c73823a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 23 38 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76d23a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 23 6d c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 62 b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 53 b1 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7382398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 23 38 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76d23a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 23 6d c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 62 b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 53 b1 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c73823b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 23 38 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76d23a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 23 6d c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 62 b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 53 b1 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7382388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 23 38 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76d23a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 23 6d c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 61 b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 53 b1 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c73823e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 23 38 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76d23a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 23 6d c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 61 b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 52 b1 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c73823c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 23 38 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76d23a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 23 6d c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 61 b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 52 b1 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7382358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 23 38 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76d23a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 23 6d c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 61 b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 52 b1 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7382378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 23 38 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76d23a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 23 6d c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 60 b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 52 b1 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7382368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 23 38 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76d23a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 23 6d c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 60 b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 51 b1 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c73823d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 23 38 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76d23a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 23 6d c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 60 b1 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 51 b1 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c7382348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 23 38 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76d23a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 23 6d c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 60 b1 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 51 b1 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c73823f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 23 38 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<byte>> lookup<byte>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 40 20 8c c7 f7 7f 00 00 e8 d0 5a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 4c b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 10 39 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 91 5a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 4b b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 10 39 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 52 5a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 4b b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 10 39 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 13 5a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 4b b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 0f 39 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 d4 59 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 4b b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 0f 39 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 95 59 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 4a b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 0f 39 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 56 59 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 4a b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 0f 39 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 17 59 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 4a b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 0f 39 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 d8 58 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 4a b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 0f 39 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 99 58 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca 49 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 0f 39 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 5a 58 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b 49 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 0f 39 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 1b 58 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c 49 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 0e 39 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 dc 57 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d 49 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 0e 39 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 9d 57 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce 48 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 0e 39 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 5e 57 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f 48 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 0e 39 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 1f 57 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 48 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 0e 39 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 e0 56 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 48 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 0e 39 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 a1 56 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 47 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 0e 39 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 62 56 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 47 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 0e 39 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 23 56 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 47 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 0d 39 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 e4 55 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 47 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 0d 39 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 a5 55 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 46 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 0d 39 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 66 55 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 46 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 0d 39 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 27 55 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 46 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 bc 38 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 40 20 8c c7 f7 7f 00 00 e8 e8 54 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 46 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 bc 38 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 40 20 8c c7 f7 7f 00 00 e8 ac 54 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd 45 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 bc 38 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 40 20 8c c7 f7 7f 00 00 e8 70 54 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 45 b1 5e 48 b8 80 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 18 bc 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0013h ja near ptr 06d7h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 be 06 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+73eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 3e 07 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 5a b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 4c b1 5e}
004fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7391058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 10 39 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 5a b1 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 4b b1 5e}
008eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7391038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 10 39 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 5a b1 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 4b b1 5e}
00cdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7391018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 10 39 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 5a b1 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 4b b1 5e}
010ch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7390ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 0f 39 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 59 b1 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 4b b1 5e}
014bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c7390fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 0f 39 c7 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 59 b1 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 4a b1 5e}
018ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c7390fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 0f 39 c7 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 59 b1 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 4a b1 5e}
01c9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c7390f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0f 39 c7 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 59 b1 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 4a b1 5e}
0208h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c7390f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 0f 39 c7 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 58 b1 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 4a b1 5e}
0247h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c7390f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0f 39 c7 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 58 b1 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 49 b1 5e}
0286h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c7390f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 0f 39 c7 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 58 b1 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 49 b1 5e}
02c5h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c7390f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 0f 39 c7 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 58 b1 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 49 b1 5e}
0304h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c7390ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 0e 39 c7 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 57 b1 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 49 b1 5e}
0343h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c7390ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 0e 39 c7 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 57 b1 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 48 b1 5e}
0382h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c7390eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 0e 39 c7 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 57 b1 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 48 b1 5e}
03c1h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c7390e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0e 39 c7 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 57 b1 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 48 b1 5e}
0400h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c7390e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 0e 39 c7 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 56 b1 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 48 b1 5e}
043fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c7390e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0e 39 c7 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 56 b1 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 47 b1 5e}
047eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c7390e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 0e 39 c7 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 56 b1 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 47 b1 5e}
04bdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c7390e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 0e 39 c7 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
04e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 56 b1 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 47 b1 5e}
04fch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c7390df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 0d 39 c7 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
0527h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 55 b1 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 47 b1 5e}
053bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c7390dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 0d 39 c7 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 55 b1 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 46 b1 5e}
057ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c7390db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 0d 39 c7 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
05a5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 55 b1 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 46 b1 5e}
05b9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c7390d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0d 39 c7 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
05e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 55 b1 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 46 b1 5e}
05f8h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c738bc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 bc 38 c7 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
0623h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 54 b1 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 46 b1 5e}
0637h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c738bc58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 bc 38 c7 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
065fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 54 b1 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 45 b1 5e}
0673h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c738bc38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bc 38 c7 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c78c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 8c c7 f7 7f 00 00}
069bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 54 b1 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 45 b1 5e}
06afh mov rax,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e9 25 c6 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c738bc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 bc 38 c7 f7 7f 00 00}
06c7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06ceh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
06d2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
06d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d6h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 60 24 8c c7 f7 7f 00 00 e8 e0 4e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 40 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 1a 39 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 a1 4e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 3f b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 19 39 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 62 4e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 3f b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 19 39 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 23 4e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 3f b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 19 39 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 e4 4d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 3f b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 19 39 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 a5 4d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 3e b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 19 39 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 66 4d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 3e b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 19 39 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 27 4d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 3e b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 19 39 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 e8 4c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 3e b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 19 39 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 a9 4c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 da 3d b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 11 39 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 6a 4c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b 3d b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 11 39 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 2b 4c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c 3d b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 11 39 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 ec 4b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d 3d b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 11 39 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 ad 4b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 de 3c b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 11 39 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 6e 4b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f 3c b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 11 39 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 2f 4b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 3c b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 11 39 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 f0 4a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 3c b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 11 39 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 b1 4a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 3b b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 11 39 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 72 4a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 3b b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 10 39 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 33 4a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 3b b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 10 39 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 f4 49 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 3b b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 10 39 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 b5 49 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 3a b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 10 39 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 76 49 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 3a b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 10 39 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 37 49 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 3a b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 10 39 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 60 24 8c c7 f7 7f 00 00 e8 f8 48 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 3a b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 10 39 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 60 24 8c c7 f7 7f 00 00 e8 bc 48 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed 39 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 10 39 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 60 24 8c c7 f7 7f 00 00 e8 80 48 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 39 b1 5e 48 b8 80 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 78 10 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0013h ja near ptr 06d7h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 be 06 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+73eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 3e 07 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 4e b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 40 b1 5e}
004fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7391a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 1a 39 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 4e b1 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 3f b1 5e}
008eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c73919f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 19 39 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 4e b1 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 3f b1 5e}
00cdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c73919e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 19 39 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 4e b1 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 3f b1 5e}
010ch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c73919d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 19 39 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 4d b1 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 3f b1 5e}
014bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c73919c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 19 39 c7 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 4d b1 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 3e b1 5e}
018ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c73919b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 19 39 c7 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 4d b1 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 3e b1 5e}
01c9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c73919a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 19 39 c7 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 4d b1 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 3e b1 5e}
0208h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c7391998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 19 39 c7 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 4c b1 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 3e b1 5e}
0247h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c7391988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 19 39 c7 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 4c b1 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 3d b1 5e}
0286h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c7391188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 11 39 c7 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 4c b1 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 3d b1 5e}
02c5h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c7391178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 11 39 c7 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 4c b1 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 3d b1 5e}
0304h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c7391168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 11 39 c7 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 4b b1 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 3d b1 5e}
0343h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c7391158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 11 39 c7 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 4b b1 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 3c b1 5e}
0382h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c7391148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 11 39 c7 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 4b b1 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 3c b1 5e}
03c1h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c7391138h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 11 39 c7 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 4b b1 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 3c b1 5e}
0400h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c7391128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 11 39 c7 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 4a b1 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 3c b1 5e}
043fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c7391118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 11 39 c7 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 4a b1 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 3b b1 5e}
047eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c7391108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 11 39 c7 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 4a b1 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 3b b1 5e}
04bdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c73910f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 10 39 c7 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
04e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 4a b1 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 3b b1 5e}
04fch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c73910e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 10 39 c7 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
0527h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 49 b1 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 3b b1 5e}
053bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c73910d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 10 39 c7 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 49 b1 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 3a b1 5e}
057ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c73910c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 10 39 c7 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
05a5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 49 b1 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 3a b1 5e}
05b9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c73910b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 10 39 c7 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
05e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 49 b1 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 3a b1 5e}
05f8h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c73910a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 10 39 c7 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
0623h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 48 b1 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 3a b1 5e}
0637h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c7391098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 10 39 c7 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
065fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 48 b1 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 39 b1 5e}
0673h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c7391088h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 10 39 c7 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c78c2460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 24 8c c7 f7 7f 00 00}
069bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 48 b1 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 39 b1 5e}
06afh mov rax,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e9 25 c6 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c7391078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 10 39 c7 f7 7f 00 00}
06c7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06ceh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
06d2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
06d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d6h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<ushort>> lookup<ushort>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d0 26 8c c7 f7 7f 00 00 e8 f0 46 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 38 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 1b 39 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 b1 46 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 37 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 1b 39 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 72 46 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 37 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 1b 39 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 33 46 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 37 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 1b 39 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 f4 45 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 37 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 1b 39 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 b5 45 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 36 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 1b 39 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 76 45 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 36 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 1b 39 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 37 45 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 36 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 1b 39 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 f8 44 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 36 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 1b 39 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 b9 44 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea 35 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 1b 39 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 7a 44 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab 35 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 1b 39 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 3b 44 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c 35 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 1b 39 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 fc 43 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d 35 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 1a 39 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 bd 43 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee 34 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 1a 39 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 7e 43 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 af 34 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 1a 39 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 3f 43 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 70 34 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 1a 39 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 00 43 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 34 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 1a 39 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 c1 42 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 33 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 1a 39 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 82 42 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 33 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 1a 39 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 43 42 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 33 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 1a 39 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 04 42 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 33 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 1a 39 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 c5 41 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 32 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 1a 39 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 86 41 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 32 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 1a 39 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 47 41 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 32 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 1a 39 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d0 26 8c c7 f7 7f 00 00 e8 08 41 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 32 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 1a 39 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d0 26 8c c7 f7 7f 00 00 e8 cc 40 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd 31 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 1a 39 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d0 26 8c c7 f7 7f 00 00 e8 90 40 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 31 b1 5e 48 b8 80 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 18 1a 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0013h ja near ptr 06d7h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 be 06 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+73eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 3e 07 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 46 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 38 b1 5e}
004fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7391bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1b 39 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 46 b1 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 37 b1 5e}
008eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7391ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 39 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 46 b1 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 37 b1 5e}
00cdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7391b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1b 39 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 46 b1 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 37 b1 5e}
010ch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7391b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 1b 39 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 45 b1 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 37 b1 5e}
014bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c7391b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 39 c7 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 45 b1 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 36 b1 5e}
018ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c7391b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1b 39 c7 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 45 b1 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 36 b1 5e}
01c9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c7391b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 1b 39 c7 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 45 b1 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 36 b1 5e}
0208h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c7391b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1b 39 c7 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 44 b1 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 36 b1 5e}
0247h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c7391b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 1b 39 c7 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 44 b1 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 35 b1 5e}
0286h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c7391b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 1b 39 c7 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 44 b1 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 35 b1 5e}
02c5h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c7391b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 1b 39 c7 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 44 b1 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 35 b1 5e}
0304h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c7391b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 1b 39 c7 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 43 b1 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 35 b1 5e}
0343h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c7391af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1a 39 c7 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 43 b1 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 34 b1 5e}
0382h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c7391ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1a 39 c7 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 43 b1 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 34 b1 5e}
03c1h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c7391ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1a 39 c7 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 43 b1 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 34 b1 5e}
0400h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c7391ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1a 39 c7 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 43 b1 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 34 b1 5e}
043fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c7391ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 39 c7 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 42 b1 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 33 b1 5e}
047eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c7391aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1a 39 c7 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 42 b1 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 33 b1 5e}
04bdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c7391a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1a 39 c7 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
04e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 42 b1 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 33 b1 5e}
04fch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c7391a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 1a 39 c7 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
0527h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 42 b1 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 33 b1 5e}
053bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c7391a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1a 39 c7 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 41 b1 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 32 b1 5e}
057ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c7391a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1a 39 c7 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
05a5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 41 b1 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 32 b1 5e}
05b9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c7391a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 1a 39 c7 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
05e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 41 b1 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 32 b1 5e}
05f8h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c7391a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1a 39 c7 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
0623h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 41 b1 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 32 b1 5e}
0637h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c7391a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 1a 39 c7 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
065fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 40 b1 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 31 b1 5e}
0673h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c7391a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 1a 39 c7 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c78c26d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 26 8c c7 f7 7f 00 00}
069bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 40 b1 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 31 b1 5e}
06afh mov rax,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e9 25 c6 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c7391a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1a 39 c7 f7 7f 00 00}
06c7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06ceh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
06d2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
06d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d6h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<short>> lookup<short>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_TernaryBitLogicKind~8u[1210] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 40 29 8c c7 f7 7f 00 00 e8 00 3f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 30 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 1d 39 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 40 29 8c c7 f7 7f 00 00 e8 c1 3e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 2f b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 1d 39 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 40 29 8c c7 f7 7f 00 00 e8 82 3e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 2f b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 1d 39 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 40 29 8c c7 f7 7f 00 00 e8 43 3e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 2f b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 1d 39 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 40 29 8c c7 f7 7f 00 00 e8 04 3e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 2f b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 1d 39 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 40 29 8c c7 f7 7f 00 00 e8 c5 3d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 2e b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 1d 39 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 40 29 8c c7 f7 7f 00 00 e8 86 3d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 2e b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 1d 39 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 40 29 8c c7 f7 7f 00 00 e8 47 3d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 2e b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 1c 39 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 40 29 8c c7 f7 7f 00 00 e8 08 3d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 2e b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 1c 39 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 40 29 8c c7 f7 7f 00 00 e8 c9 3c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa 2d b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 1c 39 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 40 29 8c c7 f7 7f 00 00 e8 8a 3c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb 2d b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 1c 39 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 40 29 8c c7 f7 7f 00 00 e8 4b 3c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c 2d b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 1c 39 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 40 29 8c c7 f7 7f 00 00 e8 0c 3c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d 2d b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 1c 39 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 40 29 8c c7 f7 7f 00 00 e8 cd 3b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe 2c b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 1c 39 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 40 29 8c c7 f7 7f 00 00 e8 8e 3b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf 2c b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 1c 39 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 40 29 8c c7 f7 7f 00 00 e8 4f 3b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 80 2c b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 1c 39 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 40 29 8c c7 f7 7f 00 00 e8 10 3b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 2c b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 1c 39 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 40 29 8c c7 f7 7f 00 00 e8 d1 3a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 2c b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 1c 39 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 40 29 8c c7 f7 7f 00 00 e8 92 3a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0013h ja near ptr 06d7h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 be 06 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+73eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 3e 07 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c78c2940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 29 8c c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 3f b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 30 b1 5e}
004fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7391d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1d 39 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c78c2940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 29 8c c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 3e b1 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 2f b1 5e}
008eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7391d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 1d 39 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c78c2940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 29 8c c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 3e b1 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 2f b1 5e}
00cdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7391d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1d 39 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c78c2940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 29 8c c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 3e b1 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 2f b1 5e}
010ch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7391d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 1d 39 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c78c2940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 29 8c c7 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 3e b1 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 2f b1 5e}
014bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c7391d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 1d 39 c7 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c78c2940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 29 8c c7 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 3d b1 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 2e b1 5e}
018ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c7391d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 1d 39 c7 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c78c2940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 29 8c c7 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 3d b1 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 2e b1 5e}
01c9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c7391d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 1d 39 c7 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c78c2940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 29 8c c7 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 3d b1 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 2e b1 5e}
0208h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c7391cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1c 39 c7 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c78c2940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 29 8c c7 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 3d b1 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 2e b1 5e}
0247h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c7391ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1c 39 c7 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c78c2940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 29 8c c7 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 3c b1 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 2d b1 5e}
0286h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c7391cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1c 39 c7 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c78c2940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 29 8c c7 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 3c b1 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 2d b1 5e}
02c5h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c7391cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1c 39 c7 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c78c2940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 29 8c c7 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 3c b1 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 2d b1 5e}
0304h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c7391cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1c 39 c7 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c78c2940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 29 8c c7 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 3c b1 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 2d b1 5e}
0343h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c7391ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1c 39 c7 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c78c2940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 29 8c c7 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 3b b1 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 2c b1 5e}
0382h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c7391c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1c 39 c7 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c78c2940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 29 8c c7 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 3b b1 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 2c b1 5e}
03c1h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c7391c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 1c 39 c7 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c78c2940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 29 8c c7 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 3b b1 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 2c b1 5e}
0400h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c7391c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1c 39 c7 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c78c2940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 29 8c c7 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 3b b1 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 2c b1 5e}
043fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c7391c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1c 39 c7 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c78c2940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 29 8c c7 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 3a b1 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 2c b1 5e}
047eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c7391c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 1c 39 c7 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c78c2940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 29 8c c7 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 3a b1 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<uint>> lookup<uint>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_TernaryBitLogicKind~8u[202] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b0 2b 8c c7 f7 7f 00 00 e8 10 33 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 24 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 36 39 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 b0 2b 8c c7 f7 7f 00 00 e8 d1 32 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 24 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 36 39 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 b0 2b 8c c7 f7 7f 00 00 e8 92 32 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0013h ja near ptr 06d7h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 be 06 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+73eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 3e 07 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c78c2bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2b 8c c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 33 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 24 b1 5e}
004fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c73936e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 36 39 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c78c2bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2b 8c c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 32 b1 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 24 b1 5e}
008eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c73936d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 36 39 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c78c2bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2b 8c c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 32 b1 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<int>> lookup<int>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 20 2e 8c c7 f7 7f 00 00 e8 20 2b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 51 1c b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 38 39 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 e1 2a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 1c b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 38 39 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 a2 2a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 1b b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 38 39 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 63 2a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 1b b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 38 39 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 24 2a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 1b b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 38 39 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 e5 29 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 16 1b b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 38 39 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 a6 29 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d7 1a b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 38 39 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 67 29 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 1a b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 38 39 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 28 29 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 1a b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 38 39 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 e9 28 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1a 1a b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 38 39 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 aa 28 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db 19 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 37 39 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 6b 28 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c 19 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 37 39 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 2c 28 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d 19 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 37 39 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 ed 27 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1e 19 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 37 39 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 ae 27 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 df 18 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 37 39 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 6f 27 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a0 18 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 37 39 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 30 27 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 18 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 37 39 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 f1 26 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 18 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 37 39 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 b2 26 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 17 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 37 39 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 73 26 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 17 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 37 39 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 34 26 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 17 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 37 39 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 f5 25 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 17 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 37 39 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 b6 25 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 16 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 37 39 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 77 25 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 16 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 37 39 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 20 2e 8c c7 f7 7f 00 00 e8 38 25 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 16 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 37 39 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 20 2e 8c c7 f7 7f 00 00 e8 fc 24 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d 16 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 37 39 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 20 2e 8c c7 f7 7f 00 00 e8 c0 24 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 15 b1 5e 48 b8 80 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 36 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0013h ja near ptr 06d7h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 be 06 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+73eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 3e 07 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 2b b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 1c b1 5e}
004fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7393898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 38 39 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 2a b1 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 1c b1 5e}
008eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7393888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 38 39 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 2a b1 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 1b b1 5e}
00cdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7393878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 38 39 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 2a b1 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 1b b1 5e}
010ch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7393868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 38 39 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 2a b1 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 1b b1 5e}
014bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c7393858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 38 39 c7 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 29 b1 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 1b b1 5e}
018ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c7393848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 38 39 c7 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 29 b1 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 1a b1 5e}
01c9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c7393838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 38 39 c7 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 29 b1 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 1a b1 5e}
0208h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c7393828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 38 39 c7 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 29 b1 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 1a b1 5e}
0247h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c7393818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 38 39 c7 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 28 b1 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 1a b1 5e}
0286h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c7393808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 38 39 c7 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 28 b1 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 19 b1 5e}
02c5h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c73937f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 37 39 c7 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 28 b1 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 19 b1 5e}
0304h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c73937e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 37 39 c7 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 28 b1 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 19 b1 5e}
0343h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c73937d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 37 39 c7 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 27 b1 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 19 b1 5e}
0382h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c73937c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 37 39 c7 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 27 b1 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 18 b1 5e}
03c1h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c73937b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 37 39 c7 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 27 b1 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 18 b1 5e}
0400h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c73937a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 37 39 c7 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 27 b1 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 18 b1 5e}
043fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c7393798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 37 39 c7 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 26 b1 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 18 b1 5e}
047eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c7393788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 37 39 c7 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 26 b1 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 17 b1 5e}
04bdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c7393778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 37 39 c7 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
04e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 26 b1 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 17 b1 5e}
04fch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c7393768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 37 39 c7 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
0527h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 26 b1 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 17 b1 5e}
053bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c7393758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 37 39 c7 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 25 b1 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 17 b1 5e}
057ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c7393748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 37 39 c7 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
05a5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 25 b1 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 16 b1 5e}
05b9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c7393738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 37 39 c7 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
05e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 25 b1 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 16 b1 5e}
05f8h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c7393728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 37 39 c7 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
0623h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 25 b1 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 16 b1 5e}
0637h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c7393718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 37 39 c7 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
065fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 24 b1 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 16 b1 5e}
0673h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c7393708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 37 39 c7 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c78c2e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 8c c7 f7 7f 00 00}
069bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 24 b1 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 15 b1 5e}
06afh mov rax,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e9 25 c6 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c73936f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 36 39 c7 f7 7f 00 00}
06c7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06ceh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
06d2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
06d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d6h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<ulong>> lookup<ulong>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 90 30 8c c7 f7 7f 00 00 e8 30 1f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 10 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 4a 39 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 f1 1e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 10 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 4a 39 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 b2 1e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 0f b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 4a 39 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 73 1e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 0f b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 49 39 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 34 1e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 0f b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 49 39 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 f5 1d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 0f b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 49 39 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 b6 1d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 0e b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 49 39 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 77 1d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 0e b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 49 39 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 38 1d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 0e b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 49 39 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 f9 1c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2a 0e b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 49 39 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 ba 1c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb 0d b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 49 39 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 7b 1c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac 0d b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 49 39 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 3c 1c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d 0d b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 49 39 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 fd 1b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2e 0d b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 49 39 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 be 1b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ef 0c b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 49 39 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 7f 1b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b0 0c b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 49 39 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 40 1b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 0c b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 39 39 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 01 1b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 0c b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 39 39 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 c2 1a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 0b b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 39 39 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 83 1a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 0b b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 39 39 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 44 1a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 0b b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 39 39 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 05 1a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 0b b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 38 39 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 c6 19 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 0a b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 38 39 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 87 19 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 0a b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 38 39 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 90 30 8c c7 f7 7f 00 00 e8 48 19 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 0a b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 38 39 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 90 30 8c c7 f7 7f 00 00 e8 0c 19 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d 0a b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 38 39 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 90 30 8c c7 f7 7f 00 00 e8 d0 18 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 0a b1 5e 48 b8 80 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 38 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0013h ja near ptr 06d7h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 be 06 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+73eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 3e 07 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 1f b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 10 b1 5e}
004fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7394a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4a 39 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 1e b1 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 10 b1 5e}
008eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7394a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 4a 39 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 1e b1 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 0f b1 5e}
00cdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7394a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 4a 39 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 1e b1 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 0f b1 5e}
010ch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c73949f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 49 39 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 1e b1 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 0f b1 5e}
014bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c73949e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 49 39 c7 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 1d b1 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 0f b1 5e}
018ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c73949d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 49 39 c7 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 1d b1 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 0e b1 5e}
01c9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c73949c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 49 39 c7 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 1d b1 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 0e b1 5e}
0208h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c73949b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 49 39 c7 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 1d b1 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 0e b1 5e}
0247h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c73949a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 49 39 c7 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 1c b1 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 0e b1 5e}
0286h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c7394998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 49 39 c7 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 1c b1 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 0d b1 5e}
02c5h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c7394988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 49 39 c7 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 1c b1 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 0d b1 5e}
0304h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c7394978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 49 39 c7 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 1c b1 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 0d b1 5e}
0343h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c7394968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 49 39 c7 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 1b b1 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 0d b1 5e}
0382h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c7394958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 49 39 c7 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 1b b1 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 0c b1 5e}
03c1h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c7394948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 49 39 c7 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 1b b1 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 0c b1 5e}
0400h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c7394938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 49 39 c7 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 1b b1 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 0c b1 5e}
043fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c7393948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 39 39 c7 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 1b b1 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 0c b1 5e}
047eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c7393938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 39 39 c7 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 1a b1 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 0b b1 5e}
04bdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c7393928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 39 39 c7 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
04e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 1a b1 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 0b b1 5e}
04fch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c7393918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 39 39 c7 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
0527h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 1a b1 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 0b b1 5e}
053bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c7393908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 39 39 c7 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 1a b1 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 0b b1 5e}
057ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c73938f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 38 39 c7 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
05a5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 19 b1 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 0a b1 5e}
05b9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c73938e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 38 39 c7 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
05e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 19 b1 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 0a b1 5e}
05f8h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c73938d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 38 39 c7 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
0623h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 19 b1 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 0a b1 5e}
0637h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c73938c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 38 39 c7 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
065fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 19 b1 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 0a b1 5e}
0673h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c73938b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 38 39 c7 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c78c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 8c c7 f7 7f 00 00}
069bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 18 b1 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 0a b1 5e}
06afh mov rax,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e9 25 c6 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c73938a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 38 39 c7 f7 7f 00 00}
06c7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06ceh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
06d2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
06d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d6h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<long>> lookup<long>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 00 33 8c c7 f7 7f 00 00 e8 40 17 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 08 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 4b 39 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 01 17 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 08 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 4b 39 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 c2 16 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 07 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 4b 39 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 83 16 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 07 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 4b 39 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 44 16 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 07 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 4b 39 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 05 16 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 07 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 4b 39 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 c6 15 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 06 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 4b 39 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 87 15 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 06 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 4b 39 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 48 15 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 06 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 4b 39 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 09 15 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3a 06 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 4b 39 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 ca 14 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb 05 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 4b 39 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 8b 14 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc 05 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 4b 39 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 4c 14 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7d 05 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 4b 39 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 0d 14 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3e 05 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 4b 39 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 ce 13 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ff 04 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 4a 39 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 8f 13 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c0 04 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 4a 39 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 50 13 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 04 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 4a 39 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 11 13 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 04 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 4a 39 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 d2 12 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 04 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 4a 39 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 93 12 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 03 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 4a 39 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 54 12 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 03 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 4a 39 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 15 12 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 03 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 4a 39 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 d6 11 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 03 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 4a 39 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 97 11 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 02 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 4a 39 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 00 33 8c c7 f7 7f 00 00 e8 58 11 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 02 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 4a 39 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 00 33 8c c7 f7 7f 00 00 e8 1c 11 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4d 02 b1 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 4a 39 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 00 33 8c c7 f7 7f 00 00 e8 e0 10 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 02 b1 5e 48 b8 80 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 38 4a 39 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0013h ja near ptr 06d7h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 be 06 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+73eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 3e 07 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 17 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 08 b1 5e}
004fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7394bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 4b 39 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 17 b1 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 08 b1 5e}
008eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7394bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 4b 39 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 16 b1 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 07 b1 5e}
00cdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7394bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 4b 39 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 16 b1 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 07 b1 5e}
010ch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7394ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 4b 39 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 16 b1 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 07 b1 5e}
014bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c7394b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 4b 39 c7 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 16 b1 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 07 b1 5e}
018ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c7394b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 4b 39 c7 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 15 b1 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 06 b1 5e}
01c9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c7394b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 4b 39 c7 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 15 b1 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 06 b1 5e}
0208h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c7394b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 4b 39 c7 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 15 b1 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 06 b1 5e}
0247h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c7394b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 4b 39 c7 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 15 b1 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 06 b1 5e}
0286h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c7394b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 4b 39 c7 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 14 b1 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 05 b1 5e}
02c5h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c7394b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4b 39 c7 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 14 b1 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 05 b1 5e}
0304h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c7394b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4b 39 c7 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 14 b1 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 05 b1 5e}
0343h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c7394b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 4b 39 c7 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 14 b1 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 05 b1 5e}
0382h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c7394b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 4b 39 c7 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 13 b1 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 04 b1 5e}
03c1h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c7394af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 4a 39 c7 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 13 b1 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 04 b1 5e}
0400h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c7394ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 4a 39 c7 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 13 b1 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 04 b1 5e}
043fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c7394ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 4a 39 c7 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 13 b1 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 04 b1 5e}
047eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c7394ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 4a 39 c7 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 12 b1 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 04 b1 5e}
04bdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c7394ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 4a 39 c7 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
04e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 12 b1 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 03 b1 5e}
04fch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c7394aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 4a 39 c7 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
0527h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 12 b1 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 03 b1 5e}
053bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c7394a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 4a 39 c7 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 12 b1 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 03 b1 5e}
057ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c7394a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 4a 39 c7 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
05a5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 11 b1 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 03 b1 5e}
05b9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c7394a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 4a 39 c7 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
05e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 11 b1 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 02 b1 5e}
05f8h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c7394a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 4a 39 c7 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
0623h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 11 b1 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 02 b1 5e}
0637h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c7394a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 4a 39 c7 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
065fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 11 b1 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 02 b1 5e}
0673h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c7394a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 4a 39 c7 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c78c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 8c c7 f7 7f 00 00}
069bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 10 b1 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 02 b1 5e}
06afh mov rax,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e9 25 c6 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c7394a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 4a 39 c7 f7 7f 00 00}
06c7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06ceh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
06d2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
06d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d6h ret                                     ; RET || C3 || encoded[1]{c3}
