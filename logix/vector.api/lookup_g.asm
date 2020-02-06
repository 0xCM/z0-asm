------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<byte>> lookup<byte>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 20 2e 70 c7 f7 7f 00 00 e8 d7 32 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 24 b3 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 c0 6e 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
001ah mov rcx,7ff7c7702e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e 70 c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 32 b3 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 24 b3 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7366ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 6e 36 c7 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 d0 5b 70 c7 f7 7f 00 00 e8 87 31 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 22 b3 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 60 6f 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
001ah mov rcx,7ff7c7705bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5b 70 c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 31 b3 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 22 b3 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7366f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 6f 36 c7 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 d0 2f 70 c7 f7 7f 00 00 e8 37 30 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 21 b3 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 6f 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
001ah mov rcx,7ff7c7702fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 2f 70 c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 30 b3 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 21 b3 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7366fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 6f 36 c7 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 f0 39 70 c7 f7 7f 00 00 e8 e7 2e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 20 b3 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 00 70 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
001ah mov rcx,7ff7c77039f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 39 70 c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 2e b3 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 20 b3 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7367000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 70 36 c7 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 80 31 70 c7 f7 7f 00 00 e8 97 2d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 1e b3 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 50 70 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
001ah mov rcx,7ff7c7703180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 31 70 c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 2d b3 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 1e b3 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7367050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 70 36 c7 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 a0 3b 70 c7 f7 7f 00 00 e8 47 2c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 1d b3 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 88 90 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
001ah mov rcx,7ff7c7703ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 3b 70 c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 2c b3 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 1d b3 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7369088h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 90 36 c7 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 50 11 70 c7 f7 7f 00 00 e8 f7 2a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 1c b3 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d8 90 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
001ah mov rcx,7ff7c7701150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 11 70 c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 2a b3 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 1c b3 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c73690d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 90 36 c7 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 80 5d 70 c7 f7 7f 00 00 e8 a7 29 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 1a b3 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 28 91 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
001ah mov rcx,7ff7c7705d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5d 70 c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 29 b3 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 1a b3 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7369128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 91 36 c7 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 e0 34 70 c7 f7 7f 00 00 e8 57 28 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 88 19 b3 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 18 92 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
001ah mov rcx,7ff7c77034e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 34 70 c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 28 b3 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 19 b3 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7369218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 92 36 c7 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 30 5f 70 c7 f7 7f 00 00 e8 07 27 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 18 b3 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 b8 92 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
001ah mov rcx,7ff7c7705f30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 5f 70 c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 27 b3 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 18 b3 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c73692b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 92 36 c7 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 90 36 70 c7 f7 7f 00 00 e8 b7 25 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 16 b3 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 08 93 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
001ah mov rcx,7ff7c7703690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 36 70 c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 25 b3 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 16 b3 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7369308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 93 36 c7 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 50 3d 70 c7 f7 7f 00 00 e8 67 24 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 15 b3 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 58 93 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
001ah mov rcx,7ff7c7703d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 3d 70 c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 24 b3 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 15 b3 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7369358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 93 36 c7 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 40 38 70 c7 f7 7f 00 00 e8 17 23 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 14 b3 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 93 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
001ah mov rcx,7ff7c7703840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 38 70 c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 23 b3 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 14 b3 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c73693a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 93 36 c7 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 00 3f 70 c7 f7 7f 00 00 e8 c7 21 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 12 b3 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 93 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
001ah mov rcx,7ff7c7703f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 3f 70 c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 21 b3 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 12 b3 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c73693f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 93 36 c7 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 30 33 70 c7 f7 7f 00 00 e8 77 20 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 11 b3 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 48 94 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
001ah mov rcx,7ff7c7703330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 33 70 c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 20 b3 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 11 b3 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7369448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 94 36 c7 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 00 7c 70 c7 f7 7f 00 00 e8 27 1f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 10 b3 5e 48 b8 a0 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 18 a2 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
001ah mov rcx,7ff7c7707c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 7c 70 c7 f7 7f 00 00}
0024h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 1f b3 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 10 b3 5e}
0038h mov rax,7ff7c625e1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e1 25 c6 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c736a218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 a2 36 c7 f7 7f 00 00}
0050h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0054h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0057h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<byte>> lookup<byte>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a0 d0 6d c7 f7 7f 00 00 e8 c0 1d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 0e b3 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 28 a3 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c76dd0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d0 6d c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 1d b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 0e b3 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c736a328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 a3 36 c7 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 70 cd 6d c7 f7 7f 00 00 e8 00 1c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 0d b3 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 a3 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c76dcd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 cd 6d c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 1c b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 0d b3 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c736a3a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 a3 36 c7 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 10 ca 6d c7 f7 7f 00 00 e8 40 1a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 0b b3 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 a3 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c76dca10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ca 6d c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 1a b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 0b b3 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c736a3e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 a3 36 c7 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 60 c8 6d c7 f7 7f 00 00 e8 80 18 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 09 b3 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 28 a4 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c76dc860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 c8 6d c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 18 b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 09 b3 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c736a428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 a4 36 c7 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b0 db 6d c7 f7 7f 00 00 e8 c0 16 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 07 b3 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 68 a4 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c76ddbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 db 6d c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 16 b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 07 b3 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c736a468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 a4 36 c7 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 80 d8 6d c7 f7 7f 00 00 e8 00 15 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 06 b3 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 a4 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c76dd880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d8 6d c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 15 b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 06 b3 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c736a4a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 a4 36 c7 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d0 d3 6d c7 f7 7f 00 00 e8 40 13 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 04 b3 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 a4 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c76dd3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d3 6d c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 13 b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 04 b3 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c736a4e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 a4 36 c7 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e0 de 6d c7 f7 7f 00 00 e8 80 11 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 02 b3 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 a5 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c76ddee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 6d c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 11 b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 02 b3 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c736a5a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 a5 36 c7 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e0 fe 6d c7 f7 7f 00 00 e8 c0 0b b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 fc b2 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 38 b6 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c76dfee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 fe 6d c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 0b b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 fc b2 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c736b638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 b6 36 c7 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b0 fb 6d c7 f7 7f 00 00 e8 00 0a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 fb b2 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 b8 b6 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c76dfbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 fb 6d c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 0a b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 fb b2 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c736b6b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 b6 36 c7 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 78 5f 6d c7 f7 7f 00 00 e8 40 08 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 f9 b2 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 b6 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c76d5f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5f 6d c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 08 b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 f9 b2 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c736b6f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 b6 36 c7 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c0 cb 6d c7 f7 7f 00 00 e8 80 06 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 f7 b2 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 38 b7 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c76dcbc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 cb 6d c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 06 b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 f7 b2 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c736b738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 b7 36 c7 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 60 08 70 c7 f7 7f 00 00 e8 c0 04 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 f5 b2 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 78 b7 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c7700860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 08 70 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 04 b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 f5 b2 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c736b778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 b7 36 c7 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 30 05 70 c7 f7 7f 00 00 e8 00 03 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 f4 b2 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 b8 b7 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c7700530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 05 70 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 03 b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 f4 b2 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c736b7b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 b7 36 c7 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a0 0f 70 c7 f7 7f 00 00 e8 40 01 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 f2 b2 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 b7 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c7700fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 0f 70 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 01 b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 f2 b2 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c736b7f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 b7 36 c7 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 90 0b 70 c7 f7 7f 00 00 e8 80 ff b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 f0 b2 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 98 c4 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c7700b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 0b 70 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 ff b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 f0 b2 5e}
004fh mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c736c498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 c4 36 c7 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 30 db 90 c7 f7 7f 00 00 e8 ba fd b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb ee b2 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 60 5e 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0037h mov rcx,7ff7c790db30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 db 90 c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba fd b2 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb ee b2 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7375e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 5e 37 c7 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 a0 e0 90 c7 f7 7f 00 00 e8 aa fb b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db ec b2 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 28 5f 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0037h mov rcx,7ff7c790e0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e0 90 c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa fb b2 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db ec b2 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7375f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 5f 37 c7 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 30 e4 90 c7 f7 7f 00 00 e8 9a f9 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cb ea b2 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a0 5f 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0037h mov rcx,7ff7c790e430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e4 90 c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a f9 b2 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb ea b2 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7375fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 5f 37 c7 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 c0 e7 90 c7 f7 7f 00 00 e8 8a f7 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb e8 b2 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 18 60 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0037h mov rcx,7ff7c790e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 90 c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a f7 b2 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb e8 b2 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7376018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 60 37 c7 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 50 eb 90 c7 f7 7f 00 00 e8 7a f1 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab e2 b2 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 90 60 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0037h mov rcx,7ff7c790eb50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 eb 90 c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a f1 b2 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab e2 b2 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7376090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 60 37 c7 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 e0 ee 90 c7 f7 7f 00 00 e8 6a ef b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b e0 b2 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 50 77 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0037h mov rcx,7ff7c790eee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 ee 90 c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a ef b2 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b e0 b2 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7377750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 77 37 c7 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 70 f2 90 c7 f7 7f 00 00 e8 5a ed b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b de b2 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 c8 77 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0037h mov rcx,7ff7c790f270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f2 90 c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a ed b2 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b de b2 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c73777c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 77 37 c7 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 00 f6 90 c7 f7 7f 00 00 e8 4a eb b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b dc b2 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 40 78 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0037h mov rcx,7ff7c790f600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f6 90 c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a eb b2 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b dc b2 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7377840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 78 37 c7 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 a8 fd 90 c7 f7 7f 00 00 e8 3a e9 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b da b2 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 60 79 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0037h mov rcx,7ff7c790fda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 fd 90 c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a e9 b2 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b da b2 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7377960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 79 37 c7 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 50 03 92 c7 f7 7f 00 00 e8 2a e7 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b d8 b2 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 28 7a 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0037h mov rcx,7ff7c7920350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 03 92 c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a e7 b2 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b d8 b2 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7377a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 7a 37 c7 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 e0 06 92 c7 f7 7f 00 00 e8 1a e5 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b d6 b2 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a0 7a 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0037h mov rcx,7ff7c79206e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 06 92 c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a e5 b2 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b d6 b2 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7377aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 7a 37 c7 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 70 0a 92 c7 f7 7f 00 00 e8 0a df b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3b d0 b2 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 90 89 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0037h mov rcx,7ff7c7920a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 0a 92 c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a df b2 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b d0 b2 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7378990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 89 37 c7 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 00 0e 92 c7 f7 7f 00 00 e8 fa dc b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2b ce b2 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 08 8a 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0037h mov rcx,7ff7c7920e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 0e 92 c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa dc b2 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b ce b2 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7378a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 8a 37 c7 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 90 11 92 c7 f7 7f 00 00 e8 ea da b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b cc b2 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 80 8a 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0037h mov rcx,7ff7c7921190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 11 92 c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea da b2 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b cc b2 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7378a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 8a 37 c7 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 20 15 92 c7 f7 7f 00 00 e8 da d8 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b ca b2 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 8a 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0037h mov rcx,7ff7c7921520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 15 92 c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da d8 b2 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b ca b2 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7378af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 8a 37 c7 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 b0 18 92 c7 f7 7f 00 00 e8 ca d6 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb c7 b2 5e 48 b8 40 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 70 8b 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0037h mov rcx,7ff7c79218b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 18 92 c7 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca d6 b2 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb c7 b2 5e}
0055h mov rax,7ff7c625e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 25 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c7378b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 8b 37 c7 f7 7f 00 00}
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
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 a0 d0 6d c7 f7 7f 00 00 e8 c2 d0 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 c1 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 c5 36 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a0 d0 6d c7 f7 7f 00 00 e8 83 d0 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 c1 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 c7 36 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a0 d0 6d c7 f7 7f 00 00 e8 44 d0 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 c1 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 c7 36 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a0 d0 6d c7 f7 7f 00 00 e8 05 d0 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 c1 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 c5 36 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a0 d0 6d c7 f7 7f 00 00 e8 c6 cf b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 c0 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 c6 36 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a0 d0 6d c7 f7 7f 00 00 e8 87 cf b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 c0 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 c6 36 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a0 d0 6d c7 f7 7f 00 00 e8 48 cf b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 c0 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 c6 36 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a0 d0 6d c7 f7 7f 00 00 e8 09 cf b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3a c0 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 c6 36 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a0 d0 6d c7 f7 7f 00 00 e8 ca ce b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb bf b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 c6 36 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a0 d0 6d c7 f7 7f 00 00 e8 8b ce b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc bf b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 c6 36 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a0 d0 6d c7 f7 7f 00 00 e8 4c ce b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7d bf b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 c5 36 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a0 d0 6d c7 f7 7f 00 00 e8 0d ce b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3e bf b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 c5 36 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a0 d0 6d c7 f7 7f 00 00 e8 ce cd b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ff be b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 c5 36 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a0 d0 6d c7 f7 7f 00 00 e8 8f cd b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c0 be b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 c6 36 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a0 d0 6d c7 f7 7f 00 00 e8 53 cd b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 84 be b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 c5 36 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a0 d0 6d c7 f7 7f 00 00 e8 17 cd b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 be b2 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 c6 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
002fh mov rcx,7ff7c76dd0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d0 6d c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 d0 b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 c1 b2 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c736c548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c5 36 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76dd0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d0 6d c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 d0 b2 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 c1 b2 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c736c728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c7 36 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76dd0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d0 6d c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 d0 b2 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 c1 b2 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c736c708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c7 36 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76dd0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d0 6d c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 d0 b2 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 c1 b2 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c736c568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 c5 36 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76dd0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d0 6d c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 cf b2 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 c0 b2 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c736c648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c6 36 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76dd0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d0 6d c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 cf b2 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 c0 b2 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c736c628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c6 36 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76dd0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d0 6d c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 cf b2 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 c0 b2 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c736c668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 c6 36 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76dd0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d0 6d c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 cf b2 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a c0 b2 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c736c608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c6 36 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76dd0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d0 6d c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca ce b2 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb bf b2 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c736c6c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 c6 36 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76dd0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d0 6d c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b ce b2 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc bf b2 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c736c688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c6 36 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76dd0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d0 6d c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c ce b2 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d bf b2 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c736c5a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c5 36 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76dd0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d0 6d c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d ce b2 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e bf b2 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c736c5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 36 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76dd0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d0 6d c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce cd b2 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff be b2 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c736c5c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 c5 36 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76dd0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d0 6d c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f cd b2 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 be b2 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c736c6a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c6 36 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76dd0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d0 6d c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 cd b2 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 be b2 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c736c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 36 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76dd0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d0 6d c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 cd b2 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 be b2 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c736c6e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 c6 36 c7 f7 7f 00 00}
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
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 70 cd 6d c7 f7 7f 00 00 e8 b2 cb b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 bc b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 cb 36 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 70 cd 6d c7 f7 7f 00 00 e8 73 cb b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 bc b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 cc 36 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 70 cd 6d c7 f7 7f 00 00 e8 34 cb b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 bc b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 cc 36 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 70 cd 6d c7 f7 7f 00 00 e8 f5 ca b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 bc b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 cb 36 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 70 cd 6d c7 f7 7f 00 00 e8 b6 ca b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 bb b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 cb 36 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 70 cd 6d c7 f7 7f 00 00 e8 77 ca b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 bb b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 cb 36 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 70 cd 6d c7 f7 7f 00 00 e8 38 ca b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 bb b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 cb 36 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 70 cd 6d c7 f7 7f 00 00 e8 f9 c9 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2a bb b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 cb 36 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 70 cd 6d c7 f7 7f 00 00 e8 ba c9 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb ba b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 cb 36 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 70 cd 6d c7 f7 7f 00 00 e8 7b c9 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac ba b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 cb 36 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 70 cd 6d c7 f7 7f 00 00 e8 3c c9 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d ba b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 cb 36 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 70 cd 6d c7 f7 7f 00 00 e8 fd c8 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2e ba b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 cb 36 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 70 cd 6d c7 f7 7f 00 00 e8 be c8 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ef b9 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 cb 36 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 70 cd 6d c7 f7 7f 00 00 e8 7f c8 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b0 b9 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 cb 36 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 70 cd 6d c7 f7 7f 00 00 e8 43 c8 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 b9 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 cb 36 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 70 cd 6d c7 f7 7f 00 00 e8 07 c8 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 b9 b2 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 cb 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
002fh mov rcx,7ff7c76dcd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 cd 6d c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 cb b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 bc b2 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c736cb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cb 36 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76dcd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 cd 6d c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 cb b2 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 bc b2 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c736cc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cc 36 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76dcd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 cd 6d c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 cb b2 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 bc b2 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c736cc08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 cc 36 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76dcd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 cd 6d c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 ca b2 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 bc b2 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c736cb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cb 36 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76dcd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 cd 6d c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 ca b2 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 bb b2 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c736cba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cb 36 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76dcd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 cd 6d c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 ca b2 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 bb b2 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c736cb98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 cb 36 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76dcd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 cd 6d c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 ca b2 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 bb b2 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c736cbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 cb 36 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76dcd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 cd 6d c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 c9 b2 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a bb b2 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c736cb88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 cb 36 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76dcd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 cd 6d c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba c9 b2 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb ba b2 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c736cbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 cb 36 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76dcd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 cd 6d c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b c9 b2 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac ba b2 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c736cbc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 cb 36 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76dcd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 cd 6d c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c c9 b2 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d ba b2 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c736cb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 cb 36 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76dcd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 cd 6d c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd c8 b2 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e ba b2 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c736cb78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cb 36 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76dcd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 cd 6d c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be c8 b2 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef b9 b2 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c736cb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 cb 36 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76dcd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 cd 6d c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f c8 b2 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 b9 b2 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c736cbd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 cb 36 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76dcd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 cd 6d c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 c8 b2 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 b9 b2 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c736cb48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 cb 36 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76dcd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 cd 6d c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 c8 b2 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 b9 b2 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c736cbf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 cb 36 c7 f7 7f 00 00}
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
; lookup_gn128_BinaryBitLogicKind~8u[753] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 10 ca 6d c7 f7 7f 00 00 e8 a2 c6 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 b7 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 cc 36 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 10 ca 6d c7 f7 7f 00 00 e8 63 c6 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 b7 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 cd 36 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 10 ca 6d c7 f7 7f 00 00 e8 24 c6 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 b7 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 cd 36 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 10 ca 6d c7 f7 7f 00 00 e8 e5 c5 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 16 b7 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 cc 36 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 10 ca 6d c7 f7 7f 00 00 e8 a6 c5 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d7 b6 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 cc 36 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 10 ca 6d c7 f7 7f 00 00 e8 67 c5 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 b6 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 cc 36 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 10 ca 6d c7 f7 7f 00 00 e8 28 c5 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 b6 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 cc 36 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 10 ca 6d c7 f7 7f 00 00 e8 e9 c4 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1a b6 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 cc 36 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 10 ca 6d c7 f7 7f 00 00 e8 aa c4 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db b5 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 cc 36 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 10 ca 6d c7 f7 7f 00 00 e8 6b c4 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c b5 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 cc 36 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 10 ca 6d c7 f7 7f 00 00 e8 2c c4 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d b5 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 cc 36 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 10 ca 6d c7 f7 7f 00 00 e8 ed c3}
; TermCode = CTC_Zx7_RET
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
002fh mov rcx,7ff7c76dca10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ca 6d c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 c6 b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 b7 b2 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c736cc38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cc 36 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76dca10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ca 6d c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 c6 b2 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 b7 b2 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c736cd28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cd 36 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76dca10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ca 6d c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 c6 b2 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 b7 b2 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c736cd18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cd 36 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76dca10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ca 6d c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 c5 b2 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 b7 b2 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c736cc48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 cc 36 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76dca10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ca 6d c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 c5 b2 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 b6 b2 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c736ccb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 cc 36 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76dca10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ca 6d c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 c5 b2 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 b6 b2 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c736cca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cc 36 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76dca10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ca 6d c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 c5 b2 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 b6 b2 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c736ccc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 cc 36 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76dca10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ca 6d c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 c4 b2 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a b6 b2 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c736cc98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 cc 36 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76dca10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ca 6d c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa c4 b2 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db b5 b2 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c736ccf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 cc 36 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76dca10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ca 6d c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b c4 b2 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c b5 b2 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c736ccd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 cc 36 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76dca10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ca 6d c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c c4 b2 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d b5 b2 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c736cc68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 cc 36 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76dca10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ca 6d c7 f7 7f 00 00}
02eeh (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 ed c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<short>> lookup<short>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_BinaryBitLogicKind~8u[74] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 60 c8 6d c7 f7 7f 00 00 e8 92 c1 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
; TermCode = CTC_Zx7_RET
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
002fh mov rcx,7ff7c76dc860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 c8 6d c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 c1 b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<uint>> lookup<uint>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 b0 db 6d c7 f7 7f 00 00 e8 82 bc b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 ad b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 ce 36 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 b0 db 6d c7 f7 7f 00 00 e8 43 bc b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 ad b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 da 36 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 b0 db 6d c7 f7 7f 00 00 e8 04 bc b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 ad b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 da 36 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 b0 db 6d c7 f7 7f 00 00 e8 c5 bb b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 ac b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 ce 36 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 b0 db 6d c7 f7 7f 00 00 e8 86 bb b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 ac b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 ce 36 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 b0 db 6d c7 f7 7f 00 00 e8 47 bb b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 ac b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 ce 36 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 b0 db 6d c7 f7 7f 00 00 e8 08 bb b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 ac b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 ce 36 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 b0 db 6d c7 f7 7f 00 00 e8 c9 ba b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa ab b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 ce 36 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 b0 db 6d c7 f7 7f 00 00 e8 8a ba b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb ab b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 da 36 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 b0 db 6d c7 f7 7f 00 00 e8 4b ba b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c ab b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 ce 36 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 b0 db 6d c7 f7 7f 00 00 e8 0c ba b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d ab b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 ce 36 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b0 db 6d c7 f7 7f 00 00 e8 cd b9 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe aa b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 ce 36 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b0 db 6d c7 f7 7f 00 00 e8 8e b9 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf aa b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 ce 36 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b0 db 6d c7 f7 7f 00 00 e8 4f b9 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 80 aa b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 da 36 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b0 db 6d c7 f7 7f 00 00 e8 13 b9 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 aa b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 ce 36 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b0 db 6d c7 f7 7f 00 00 e8 d7 b8 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 aa b2 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 da 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
002fh mov rcx,7ff7c76ddbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 db 6d c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 bc b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 ad b2 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c736ce58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 ce 36 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76ddbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 db 6d c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 bc b2 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 ad b2 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c736dad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 da 36 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76ddbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 db 6d c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 bc b2 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 ad b2 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c736dac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 da 36 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76ddbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 db 6d c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 bb b2 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 ac b2 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c736ce68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ce 36 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76ddbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 db 6d c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 bb b2 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 ac b2 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c736ced8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ce 36 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76ddbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 db 6d c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 bb b2 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 ac b2 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c736cec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ce 36 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76ddbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 db 6d c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 bb b2 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 ac b2 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c736cee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 36 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76ddbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 db 6d c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 ba b2 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa ab b2 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c736ceb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 ce 36 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76ddbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 db 6d c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a ba b2 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb ab b2 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c736daa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 da 36 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76ddbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 db 6d c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b ba b2 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c ab b2 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c736cef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ce 36 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76ddbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 db 6d c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c ba b2 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d ab b2 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c736ce88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ce 36 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76ddbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 db 6d c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd b9 b2 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe aa b2 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c736cea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ce 36 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76ddbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 db 6d c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e b9 b2 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf aa b2 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c736ce98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ce 36 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76ddbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 db 6d c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f b9 b2 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 aa b2 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c736da90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 da 36 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76ddbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 db 6d c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 b9 b2 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 aa b2 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c736ce78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ce 36 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76ddbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 db 6d c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 b8 b2 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 aa b2 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c736dab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 da 36 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<int>> lookup<int>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 80 d8 6d c7 f7 7f 00 00 e8 72 b7 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 a8 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 da 36 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 80 d8 6d c7 f7 7f 00 00 e8 33 b7 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 a8 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 db 36 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 80 d8 6d c7 f7 7f 00 00 e8 f4 b6 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 a8 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 db 36 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 80 d8 6d c7 f7 7f 00 00 e8 b5 b6 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 a7 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 db 36 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 80 d8 6d c7 f7 7f 00 00 e8 76 b6 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 a7 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 db 36 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 80 d8 6d c7 f7 7f 00 00 e8 37 b6 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 a7 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 db 36 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 80 d8 6d c7 f7 7f 00 00 e8 f8 b5 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 a7 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 db 36 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 80 d8 6d c7 f7 7f 00 00 e8 b9 b5 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea a6 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 db 36 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 80 d8 6d c7 f7 7f 00 00 e8 7a b5 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab a6 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 db 36 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 80 d8 6d c7 f7 7f 00 00 e8 3b b5 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c a6 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 db 36 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 80 d8 6d c7 f7 7f 00 00 e8 fc b4 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d a6 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 db 36 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 80 d8 6d c7 f7 7f 00 00 e8 bd b4 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee a5 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 db 36 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 80 d8 6d c7 f7 7f 00 00 e8 7e b4 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 af a5 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 db 36 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 80 d8 6d c7 f7 7f 00 00 e8 3f b4 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 70 a5 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 db 36 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 80 d8 6d c7 f7 7f 00 00 e8 03 b4 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 a5 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 db 36 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 80 d8 6d c7 f7 7f 00 00 e8 c7 b3 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 a4 b2 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 c0 db 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
002fh mov rcx,7ff7c76dd880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d8 6d c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 b7 b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 a8 b2 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c736daf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 da 36 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76dd880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d8 6d c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 b7 b2 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 a8 b2 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c736dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 36 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76dd880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d8 6d c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 b6 b2 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 a8 b2 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c736dbd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 db 36 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76dd880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d8 6d c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 b6 b2 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 a7 b2 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c736db00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 db 36 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76dd880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d8 6d c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 b6 b2 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 a7 b2 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c736db70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 db 36 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76dd880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d8 6d c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 b6 b2 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 a7 b2 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c736db60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 db 36 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76dd880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d8 6d c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 b5 b2 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 a7 b2 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c736db80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 db 36 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76dd880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d8 6d c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 b5 b2 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea a6 b2 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c736db50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 db 36 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76dd880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d8 6d c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a b5 b2 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab a6 b2 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c736dbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 db 36 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76dd880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d8 6d c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b b5 b2 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c a6 b2 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c736db90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 db 36 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76dd880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d8 6d c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc b4 b2 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d a6 b2 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c736db20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 db 36 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76dd880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d8 6d c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd b4 b2 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee a5 b2 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c736db40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 db 36 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76dd880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d8 6d c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e b4 b2 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af a5 b2 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c736db30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 db 36 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76dd880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d8 6d c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f b4 b2 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 a5 b2 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c736dba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 db 36 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76dd880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d8 6d c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 b4 b2 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 a5 b2 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c736db10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 db 36 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76dd880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d8 6d c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 b3 b2 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 a4 b2 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c736dbc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 db 36 c7 f7 7f 00 00}
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
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 d0 d3 6d c7 f7 7f 00 00 e8 62 b2 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 a3 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 dc 36 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d0 d3 6d c7 f7 7f 00 00 e8 23 b2 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 a3 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 dc 36 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d0 d3 6d c7 f7 7f 00 00 e8 e4 b1 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 a3 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 dc 36 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d0 d3 6d c7 f7 7f 00 00 e8 a5 b1 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 a2 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 dc 36 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d0 d3 6d c7 f7 7f 00 00 e8 66 b1 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 a2 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 dc 36 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d0 d3 6d c7 f7 7f 00 00 e8 27 b1 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 a2 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 dc 36 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d0 d3 6d c7 f7 7f 00 00 e8 e8 b0 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 a2 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 dc 36 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d0 d3 6d c7 f7 7f 00 00 e8 a9 b0 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 da a1 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 dc 36 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d0 d3 6d c7 f7 7f 00 00 e8 6a b0 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b a1 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 dc 36 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d0 d3 6d c7 f7 7f 00 00 e8 2b b0 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c a1 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 dc 36 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d0 d3 6d c7 f7 7f 00 00 e8 ec af b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d a1 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 dc 36 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d0 d3 6d c7 f7 7f 00 00 e8 ad af b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 de a0 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 dc 36 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d0 d3 6d c7 f7 7f 00 00 e8 6e af b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f a0 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 dc 36 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d0 d3 6d c7 f7 7f 00 00 e8 2f af b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 a0 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 dc 36 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d0 d3 6d c7 f7 7f 00 00 e8 f3 ae b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 a0 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 dc 36 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d0 d3 6d c7 f7 7f 00 00 e8 b7 ae b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 9f b2 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 dc 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
002fh mov rcx,7ff7c76dd3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d3 6d c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 b2 b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 a3 b2 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c736dc00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 dc 36 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76dd3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d3 6d c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 b2 b2 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 a3 b2 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c736dcf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 dc 36 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76dd3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d3 6d c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 b1 b2 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 a3 b2 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c736dce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 dc 36 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76dd3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d3 6d c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 b1 b2 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 a2 b2 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c736dc10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 dc 36 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76dd3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d3 6d c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 b1 b2 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 a2 b2 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c736dc80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 dc 36 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76dd3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d3 6d c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 b1 b2 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 a2 b2 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c736dc70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 dc 36 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76dd3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d3 6d c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 b0 b2 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 a2 b2 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c736dc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 dc 36 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76dd3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d3 6d c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 b0 b2 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da a1 b2 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c736dc60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 dc 36 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76dd3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d3 6d c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a b0 b2 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b a1 b2 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c736dcc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 dc 36 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76dd3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d3 6d c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b b0 b2 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c a1 b2 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c736dca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 dc 36 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76dd3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d3 6d c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec af b2 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d a1 b2 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c736dc30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 dc 36 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76dd3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d3 6d c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad af b2 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de a0 b2 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c736dc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 dc 36 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76dd3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d3 6d c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e af b2 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f a0 b2 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c736dc40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 dc 36 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76dd3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d3 6d c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f af b2 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 a0 b2 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c736dcb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 dc 36 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76dd3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d3 6d c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 ae b2 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 a0 b2 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c736dc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 dc 36 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76dd3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d3 6d c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 ae b2 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 9f b2 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c736dcd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 dc 36 c7 f7 7f 00 00}
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
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 e0 de 6d c7 f7 7f 00 00 e8 52 ad b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 9e b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 dd 36 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 e0 de 6d c7 f7 7f 00 00 e8 13 ad b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 9e b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 de 36 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 e0 de 6d c7 f7 7f 00 00 e8 d4 ac b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 9e b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 dd 36 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 e0 de 6d c7 f7 7f 00 00 e8 95 ac b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 9d b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 dd 36 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 e0 de 6d c7 f7 7f 00 00 e8 56 ac b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 9d b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 dd 36 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 e0 de 6d c7 f7 7f 00 00 e8 17 ac b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 9d b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 dd 36 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 e0 de 6d c7 f7 7f 00 00 e8 d8 ab b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 9d b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 dd 36 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 e0 de 6d c7 f7 7f 00 00 e8 99 ab b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca 9c b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 dd 36 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 e0 de 6d c7 f7 7f 00 00 e8 5a ab b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b 9c b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 dd 36 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 e0 de 6d c7 f7 7f 00 00 e8 1b ab b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c 9c b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 dd 36 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 e0 de 6d c7 f7 7f 00 00 e8 dc aa b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d 9c b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 dd 36 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e0 de 6d c7 f7 7f 00 00 e8 9d aa b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce 9b b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 dd 36 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e0 de 6d c7 f7 7f 00 00 e8 5e aa b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f 9b b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 dd 36 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e0 de 6d c7 f7 7f 00 00 e8 1f aa b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 9b b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 dd 36 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e0 de 6d c7 f7 7f 00 00 e8 e3 a9 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 9b b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 dd 36 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e0 de 6d c7 f7 7f 00 00 e8 a7 a9 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 9a b2 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e0 dd 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
002fh mov rcx,7ff7c76ddee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 6d c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 ad b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 9e b2 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c736dd10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 dd 36 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76ddee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 6d c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 ad b2 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 9e b2 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c736de00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 de 36 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76ddee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 6d c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 ac b2 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 9e b2 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c736ddf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 dd 36 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76ddee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 6d c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 ac b2 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 9d b2 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c736dd20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 dd 36 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76ddee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 6d c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 ac b2 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 9d b2 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c736dd90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 dd 36 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76ddee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 6d c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 ac b2 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 9d b2 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c736dd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 dd 36 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76ddee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 6d c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 ab b2 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 9d b2 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c736dda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 dd 36 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76ddee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 6d c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 ab b2 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 9c b2 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c736dd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 dd 36 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76ddee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 6d c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a ab b2 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 9c b2 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c736ddd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 dd 36 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76ddee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 6d c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b ab b2 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 9c b2 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c736ddb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 dd 36 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76ddee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 6d c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc aa b2 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 9c b2 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c736dd40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 dd 36 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76ddee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 6d c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d aa b2 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 9b b2 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c736dd60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 dd 36 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76ddee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 6d c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e aa b2 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 9b b2 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c736dd50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 dd 36 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76ddee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 6d c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f aa b2 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 9b b2 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c736ddc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 dd 36 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76ddee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 6d c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 a9 b2 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 9b b2 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c736dd30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 dd 36 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76ddee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 6d c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 a9 b2 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 9a b2 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c736dde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 dd 36 c7 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 e0 fe 6d c7 f7 7f 00 00 e8 42 a8 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 99 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 ea 36 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 e0 fe 6d c7 f7 7f 00 00 e8 03 a8 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 99 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 ec 36 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 e0 fe 6d c7 f7 7f 00 00 e8 c4 a7 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 98 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 ec 36 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 e0 fe 6d c7 f7 7f 00 00 e8 85 a7 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 98 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 ea 36 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 e0 fe 6d c7 f7 7f 00 00 e8 46 a7 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 98 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 eb 36 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 e0 fe 6d c7 f7 7f 00 00 e8 07 a7 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 98 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 eb 36 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 e0 fe 6d c7 f7 7f 00 00 e8 c8 a6 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 97 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 eb 36 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 e0 fe 6d c7 f7 7f 00 00 e8 89 a6 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba 97 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 eb 36 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 e0 fe 6d c7 f7 7f 00 00 e8 4a a6 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b 97 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 eb 36 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 e0 fe 6d c7 f7 7f 00 00 e8 0b a6 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c 97 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 eb 36 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 e0 fe 6d c7 f7 7f 00 00 e8 cc a5 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd 96 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 ea 36 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e0 fe 6d c7 f7 7f 00 00 e8 8d a5 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be 96 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 ea 36 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e0 fe 6d c7 f7 7f 00 00 e8 4e a5 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f 96 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 ea 36 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e0 fe 6d c7 f7 7f 00 00 e8 0f a5 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 96 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 eb 36 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e0 fe 6d c7 f7 7f 00 00 e8 d3 a4 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 96 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 ea 36 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e0 fe 6d c7 f7 7f 00 00 e8 97 a4 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 95 b2 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e0 eb 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
002fh mov rcx,7ff7c76dfee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 fe 6d c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 a8 b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 99 b2 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c736ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 36 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76dfee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 fe 6d c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 a8 b2 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 99 b2 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c736ec20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ec 36 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76dfee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 fe 6d c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 a7 b2 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 98 b2 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c736ec00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ec 36 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76dfee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 fe 6d c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 a7 b2 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 98 b2 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c736ea60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ea 36 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76dfee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 fe 6d c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 a7 b2 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 98 b2 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c736eb40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 eb 36 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76dfee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 fe 6d c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 a7 b2 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 98 b2 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c736eb20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 eb 36 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76dfee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 fe 6d c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 a6 b2 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 97 b2 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c736eb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 eb 36 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76dfee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 fe 6d c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 a6 b2 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 97 b2 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c736eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 36 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76dfee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 fe 6d c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a a6 b2 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 97 b2 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c736ebc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 eb 36 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76dfee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 fe 6d c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b a6 b2 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 97 b2 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c736eb80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 eb 36 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76dfee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 fe 6d c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc a5 b2 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 96 b2 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c736eaa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ea 36 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76dfee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 fe 6d c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d a5 b2 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 96 b2 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c736eae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 ea 36 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76dfee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 fe 6d c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e a5 b2 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 96 b2 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c736eac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 ea 36 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76dfee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 fe 6d c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f a5 b2 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 96 b2 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c736eba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 eb 36 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76dfee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 fe 6d c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 a4 b2 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 96 b2 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c736ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 36 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76dfee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 fe 6d c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 a4 b2 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 95 b2 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c736ebe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 eb 36 c7 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[938] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 b0 fb 6d c7 f7 7f 00 00 e8 32 a3 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 94 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 ed 36 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 b0 fb 6d c7 f7 7f 00 00 e8 f3 a2 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 94 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 ee 36 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 b0 fb 6d c7 f7 7f 00 00 e8 b4 a2 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 93 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 ee 36 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 b0 fb 6d c7 f7 7f 00 00 e8 75 a2 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 93 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 ed 36 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 b0 fb 6d c7 f7 7f 00 00 e8 36 a2 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 93 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 ed 36 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 b0 fb 6d c7 f7 7f 00 00 e8 f7 a1 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 93 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 ed 36 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 b0 fb 6d c7 f7 7f 00 00 e8 b8 a1 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 92 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 ed 36 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 b0 fb 6d c7 f7 7f 00 00 e8 79 a1 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa 92 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 ed 36 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 b0 fb 6d c7 f7 7f 00 00 e8 3a a1 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b 92 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 ed 36 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 b0 fb 6d c7 f7 7f 00 00 e8 fb a0 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 92 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 ed 36 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 b0 fb 6d c7 f7 7f 00 00 e8 bc a0 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed 91 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 ed 36 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b0 fb 6d c7 f7 7f 00 00 e8 7d a0 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae 91 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 ed 36 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b0 fb 6d c7 f7 7f 00 00 e8 3e a0 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f 91 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 ed 36 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b0 fb 6d c7 f7 7f 00 00 e8 ff 9f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 91 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 ed 36 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b0 fb 6d c7 f7 7f 00 00 e8 c3}
; TermCode = CTC_Zx7_RET
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
002fh mov rcx,7ff7c76dfbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 fb 6d c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 a3 b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 94 b2 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c736ed20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ed 36 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76dfbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 fb 6d c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 a2 b2 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 94 b2 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c736ee10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ee 36 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76dfbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 fb 6d c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 a2 b2 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 93 b2 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c736ee00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ee 36 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76dfbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 fb 6d c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 a2 b2 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 93 b2 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c736ed30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ed 36 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76dfbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 fb 6d c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 a2 b2 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 93 b2 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c736eda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ed 36 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76dfbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 fb 6d c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 a1 b2 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 93 b2 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c736ed90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ed 36 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76dfbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 fb 6d c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 a1 b2 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 92 b2 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c736edb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 ed 36 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76dfbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 fb 6d c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 a1 b2 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 92 b2 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c736ed80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ed 36 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76dfbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 fb 6d c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a a1 b2 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 92 b2 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c736ede0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 ed 36 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76dfbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 fb 6d c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb a0 b2 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 92 b2 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c736edc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 ed 36 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76dfbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 fb 6d c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc a0 b2 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 91 b2 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c736ed50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ed 36 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76dfbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 fb 6d c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d a0 b2 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 91 b2 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c736ed70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ed 36 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76dfbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 fb 6d c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e a0 b2 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 91 b2 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c736ed60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ed 36 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76dfbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 fb 6d c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 9f b2 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 91 b2 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c736edd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ed 36 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76dfbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 fb 6d c7 f7 7f 00 00}
03a8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ushort>> lookup<ushort>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 78 5f 6d c7 f7 7f 00 00 e8 22 9e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 8f b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 f4 36 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 78 5f 6d c7 f7 7f 00 00 e8 e3 9d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 8f b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 f5 36 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 78 5f 6d c7 f7 7f 00 00 e8 a4 9d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 8e b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 f4 36 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 78 5f 6d c7 f7 7f 00 00 e8 65 9d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 8e b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 f4 36 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 78 5f 6d c7 f7 7f 00 00 e8 26 9d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 8e b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 f4 36 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 78 5f 6d c7 f7 7f 00 00 e8 e7 9c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 8e b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 f4 36 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 78 5f 6d c7 f7 7f 00 00 e8 a8 9c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 8d b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 f4 36 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 78 5f 6d c7 f7 7f 00 00 e8 69 9c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a 8d b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 f4 36 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 78 5f 6d c7 f7 7f 00 00 e8 2a 9c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b 8d b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 f4 36 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 78 5f 6d c7 f7 7f 00 00 e8 eb 9b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 8d b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 f4 36 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 78 5f 6d c7 f7 7f 00 00 e8 ac 9b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd 8c b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 f4 36 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 78 5f 6d c7 f7 7f 00 00 e8 6d 9b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e 8c b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 f4 36 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 78 5f 6d c7 f7 7f 00 00 e8 2e 9b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f 8c b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 f4 36 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 78 5f 6d c7 f7 7f 00 00 e8 ef 9a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 8c b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 f4 36 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 78 5f 6d c7 f7 7f 00 00 e8 b3 9a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 8b b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 f4 36 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 78 5f 6d c7 f7 7f 00 00 e8 77 9a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 8b b2 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 f4 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
002fh mov rcx,7ff7c76d5f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5f 6d c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 9e b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 8f b2 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c736f418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f4 36 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76d5f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5f 6d c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 9d b2 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 8f b2 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c736f508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f5 36 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76d5f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5f 6d c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 9d b2 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 8e b2 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c736f4f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 f4 36 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76d5f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5f 6d c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 9d b2 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 8e b2 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c736f428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 f4 36 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76d5f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5f 6d c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 9d b2 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 8e b2 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c736f498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f4 36 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76d5f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5f 6d c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 9c b2 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 8e b2 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c736f488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 f4 36 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76d5f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5f 6d c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 9c b2 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 8d b2 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c736f4a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f4 36 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76d5f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5f 6d c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 9c b2 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 8d b2 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c736f478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f4 36 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76d5f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5f 6d c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 9c b2 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 8d b2 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c736f4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f4 36 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76d5f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5f 6d c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 9b b2 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 8d b2 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c736f4b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f4 36 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76d5f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5f 6d c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 9b b2 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 8c b2 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c736f448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f4 36 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76d5f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5f 6d c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 9b b2 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 8c b2 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c736f468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 f4 36 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76d5f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5f 6d c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 9b b2 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 8c b2 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c736f458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f4 36 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76d5f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5f 6d c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 9a b2 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 8c b2 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c736f4c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f4 36 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76d5f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5f 6d c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 9a b2 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 8b b2 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c736f438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f4 36 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76d5f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5f 6d c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 9a b2 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 8b b2 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c736f4e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 f4 36 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<short>> lookup<short>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 c0 cb 6d c7 f7 7f 00 00 e8 12 99 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 8a b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 f5 36 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c0 cb 6d c7 f7 7f 00 00 e8 d3 98 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 8a b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 f6 36 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 c0 cb 6d c7 f7 7f 00 00 e8 94 98 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 89 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 f6 36 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 c0 cb 6d c7 f7 7f 00 00 e8 55 98 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 86 89 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 f5 36 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 c0 cb 6d c7 f7 7f 00 00 e8 16 98 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 47 89 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 f5 36 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 c0 cb 6d c7 f7 7f 00 00 e8 d7 97 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 89 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 f5 36 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 c0 cb 6d c7 f7 7f 00 00 e8 98 97 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 88 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 f5 36 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 c0 cb 6d c7 f7 7f 00 00 e8 59 97 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8a 88 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 f5 36 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 c0 cb 6d c7 f7 7f 00 00 e8 1a 97 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b 88 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 f5 36 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 c0 cb 6d c7 f7 7f 00 00 e8 db 96 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c 88 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 f5 36 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 c0 cb 6d c7 f7 7f 00 00 e8 9c 96 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd 87 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 f5 36 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c0 cb 6d c7 f7 7f 00 00 e8 5d 96 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8e 87 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 f5 36 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c0 cb 6d c7 f7 7f 00 00 e8 1e 96 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4f 87 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 f5 36 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c0 cb 6d c7 f7 7f 00 00 e8 df 95 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 10 87 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 f5 36 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c0 cb 6d c7 f7 7f 00 00 e8 a3 95 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 86 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 f5 36 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c0 cb 6d c7 f7 7f 00 00 e8 67 95 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 86 b2 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 f5 36 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
002fh mov rcx,7ff7c76dcbc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 cb 6d c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 99 b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 8a b2 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c736f528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 f5 36 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76dcbc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 cb 6d c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 98 b2 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 8a b2 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c736f618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f6 36 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76dcbc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 cb 6d c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 98 b2 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 89 b2 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c736f608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f6 36 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76dcbc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 cb 6d c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 98 b2 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 89 b2 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c736f538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f5 36 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76dcbc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 cb 6d c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 98 b2 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 89 b2 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c736f5a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f5 36 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76dcbc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 cb 6d c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 97 b2 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 89 b2 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c736f598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f5 36 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76dcbc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 cb 6d c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 97 b2 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 88 b2 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c736f5b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f5 36 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76dcbc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 cb 6d c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 97 b2 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 88 b2 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c736f588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 f5 36 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76dcbc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 cb 6d c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 97 b2 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 88 b2 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c736f5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f5 36 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76dcbc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 cb 6d c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 96 b2 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 88 b2 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c736f5c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f5 36 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76dcbc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 cb 6d c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 96 b2 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 87 b2 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c736f558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f5 36 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76dcbc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 cb 6d c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 96 b2 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 87 b2 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c736f578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f5 36 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76dcbc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 cb 6d c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 96 b2 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 87 b2 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c736f568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 f5 36 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76dcbc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 cb 6d c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 95 b2 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 87 b2 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c736f5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f5 36 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76dcbc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 cb 6d c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 95 b2 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 86 b2 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c736f548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f5 36 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76dcbc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 cb 6d c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 95 b2 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 86 b2 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c736f5f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 f5 36 c7 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[122] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 60 08 70 c7 f7 7f 00 00 e8 02 94 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 85 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 f6 36 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 60 08 70 c7 f7 7f 00 00 e8 c3}
; TermCode = CTC_Zx7_RET
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
002fh mov rcx,7ff7c7700860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 08 70 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 94 b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 85 b2 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c736f638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f6 36 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c7700860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 08 70 c7 f7 7f 00 00}
0078h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<int>> lookup<int>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 30 05 70 c7 f7 7f 00 00 e8 f2 8e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 80 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 f7 36 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 30 05 70 c7 f7 7f 00 00 e8 b3 8e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 7f b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 01 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 30 05 70 c7 f7 7f 00 00 e8 74 8e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 7f b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 00 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 30 05 70 c7 f7 7f 00 00 e8 35 8e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 66 7f b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 f7 36 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 30 05 70 c7 f7 7f 00 00 e8 f6 8d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 27 7f b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 f7 36 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 30 05 70 c7 f7 7f 00 00 e8 b7 8d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 7e b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 f7 36 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 30 05 70 c7 f7 7f 00 00 e8 78 8d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 7e b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 f7 36 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 30 05 70 c7 f7 7f 00 00 e8 39 8d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6a 7e b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 f7 36 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 30 05 70 c7 f7 7f 00 00 e8 fa 8c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2b 7e b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 00 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 30 05 70 c7 f7 7f 00 00 e8 bb 8c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec 7d b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 f7 36 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 30 05 70 c7 f7 7f 00 00 e8 7c 8c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad 7d b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 f7 36 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 30 05 70 c7 f7 7f 00 00 e8 3d 8c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6e 7d b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 f7 36 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 30 05 70 c7 f7 7f 00 00 e8 fe 8b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2f 7d b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 f7 36 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 30 05 70 c7 f7 7f 00 00 e8 bf 8b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f0 7c b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 f7 36 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 30 05 70 c7 f7 7f 00 00 e8 83 8b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 7c b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 f7 36 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 30 05 70 c7 f7 7f 00 00 e8 47 8b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 7c b2 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 00 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
002fh mov rcx,7ff7c7700530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 05 70 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 8e b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 80 b2 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c736f748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f7 36 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c7700530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 05 70 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 8e b2 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 7f b2 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7370108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 01 37 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c7700530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 05 70 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 8e b2 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 7f b2 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c73700f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 00 37 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c7700530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 05 70 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 8e b2 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 7f b2 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c736f758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f7 36 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c7700530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 05 70 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 8d b2 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 7f b2 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c736f7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f7 36 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c7700530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 05 70 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 8d b2 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 7e b2 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c736f7b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f7 36 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c7700530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 05 70 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 8d b2 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 7e b2 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c736f7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f7 36 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c7700530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 05 70 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 8d b2 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 7e b2 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c736f7a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f7 36 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c7700530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 05 70 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 8c b2 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 7e b2 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c73700d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 00 37 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c7700530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 05 70 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 8c b2 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 7d b2 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c736f7e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f7 36 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c7700530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 05 70 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 8c b2 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 7d b2 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c736f778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f7 36 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c7700530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 05 70 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 8c b2 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 7d b2 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c736f798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f7 36 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c7700530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 05 70 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 8b b2 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 7d b2 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c736f788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 f7 36 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c7700530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 05 70 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 8b b2 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 7c b2 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c736f7f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 f7 36 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c7700530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 05 70 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 8b b2 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 7c b2 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c736f768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 f7 36 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c7700530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 05 70 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 8b b2 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 7c b2 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c73700e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 00 37 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ulong>> lookup<ulong>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 a0 0f 70 c7 f7 7f 00 00 e8 e2 89 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 7b b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 01 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a0 0f 70 c7 f7 7f 00 00 e8 a3 89 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 7a b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 02 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a0 0f 70 c7 f7 7f 00 00 e8 64 89 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 7a b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 02 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a0 0f 70 c7 f7 7f 00 00 e8 25 89 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 7a b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 01 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a0 0f 70 c7 f7 7f 00 00 e8 e6 88 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 7a b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 01 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a0 0f 70 c7 f7 7f 00 00 e8 a7 88 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 79 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 01 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a0 0f 70 c7 f7 7f 00 00 e8 68 88 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 79 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 01 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a0 0f 70 c7 f7 7f 00 00 e8 29 88 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a 79 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 01 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a0 0f 70 c7 f7 7f 00 00 e8 ea 87 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b 79 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 01 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a0 0f 70 c7 f7 7f 00 00 e8 ab 87 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dc 78 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 01 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a0 0f 70 c7 f7 7f 00 00 e8 6c 87 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d 78 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 01 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a0 0f 70 c7 f7 7f 00 00 e8 2d 87 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5e 78 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 01 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a0 0f 70 c7 f7 7f 00 00 e8 ee 86 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1f 78 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 01 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a0 0f 70 c7 f7 7f 00 00 e8 af 86 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e0 77 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 01 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a0 0f 70 c7 f7 7f 00 00 e8 73 86 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 77 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 01 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a0 0f 70 c7 f7 7f 00 00 e8 37 86 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 77 b2 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 01 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
002fh mov rcx,7ff7c7700fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 0f 70 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 89 b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 7b b2 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7370128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 01 37 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c7700fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 0f 70 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 89 b2 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 7a b2 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7370218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 02 37 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c7700fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 0f 70 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 89 b2 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 7a b2 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c7370208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 02 37 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c7700fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 0f 70 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 89 b2 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 7a b2 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7370138h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 01 37 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c7700fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 0f 70 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 88 b2 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 7a b2 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c73701a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 01 37 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c7700fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 0f 70 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 88 b2 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 79 b2 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7370198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 01 37 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c7700fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 0f 70 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 88 b2 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 79 b2 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c73701b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 01 37 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c7700fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 0f 70 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 88 b2 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 79 b2 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7370188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 01 37 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c7700fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 0f 70 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 87 b2 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 79 b2 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c73701e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 01 37 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c7700fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 0f 70 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 87 b2 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 78 b2 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c73701c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 01 37 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c7700fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 0f 70 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 87 b2 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 78 b2 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7370158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 01 37 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c7700fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 0f 70 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 87 b2 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 78 b2 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7370178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 01 37 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c7700fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 0f 70 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 86 b2 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 78 b2 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7370168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 01 37 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c7700fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 0f 70 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 86 b2 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 77 b2 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c73701d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 01 37 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c7700fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 0f 70 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 86 b2 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 77 b2 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c7370148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 01 37 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c7700fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 0f 70 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 86 b2 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 77 b2 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c73701f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 01 37 c7 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 90 0b 70 c7 f7 7f 00 00 e8 d2 84 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 76 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 02 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 90 0b 70 c7 f7 7f 00 00 e8 93 84 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 75 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 03 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 90 0b 70 c7 f7 7f 00 00 e8 54 84 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 75 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 03 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 90 0b 70 c7 f7 7f 00 00 e8 15 84 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 75 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 02 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 90 0b 70 c7 f7 7f 00 00 e8 d6 83 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 75 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 02 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 90 0b 70 c7 f7 7f 00 00 e8 97 83 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 74 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 02 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 90 0b 70 c7 f7 7f 00 00 e8 58 83 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 74 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 02 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 90 0b 70 c7 f7 7f 00 00 e8 19 83 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 74 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 02 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 90 0b 70 c7 f7 7f 00 00 e8 da 82 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 74 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 02 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 90 0b 70 c7 f7 7f 00 00 e8 9b 82 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 73 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 02 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 90 0b 70 c7 f7 7f 00 00 e8 5c 82 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 73 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 02 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 90 0b 70 c7 f7 7f 00 00 e8 1d 82 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 73 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 02 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 90 0b 70 c7 f7 7f 00 00 e8 de 81 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 73 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 02 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 90 0b 70 c7 f7 7f 00 00 e8 9f 81 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 72 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 02 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 90 0b 70 c7 f7 7f 00 00 e8 63 81 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 72 b2 5e 48 b9 60 e1 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 02 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 90 0b 70 c7 f7 7f 00 00 e8 27 81 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 72 b2 5e 48 b8 60 e1 25 c6 f7 7f 00 00 48 89 46 18 48 b8 08 03 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
002fh mov rcx,7ff7c7700b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 0b 70 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 84 b2 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 76 b2 5e}
004dh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7370238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 02 37 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c7700b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 0b 70 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 84 b2 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 75 b2 5e}
008ch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7370328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 03 37 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c7700b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 0b 70 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 84 b2 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 75 b2 5e}
00cbh mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c7370318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 03 37 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c7700b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 0b 70 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 84 b2 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 75 b2 5e}
010ah mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7370248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 02 37 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c7700b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 0b 70 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 83 b2 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 75 b2 5e}
0149h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c73702b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 02 37 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c7700b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 0b 70 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 83 b2 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 74 b2 5e}
0188h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c73702a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 02 37 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c7700b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 0b 70 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 83 b2 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 74 b2 5e}
01c7h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c73702c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 02 37 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c7700b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 0b 70 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 83 b2 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 74 b2 5e}
0206h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7370298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 02 37 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c7700b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 0b 70 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 82 b2 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 74 b2 5e}
0245h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c73702f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 02 37 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c7700b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 0b 70 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 82 b2 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 73 b2 5e}
0284h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c73702d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 02 37 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c7700b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 0b 70 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 82 b2 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 73 b2 5e}
02c3h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7370268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 02 37 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c7700b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 0b 70 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 82 b2 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 73 b2 5e}
0302h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7370288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 02 37 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c7700b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 0b 70 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 81 b2 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 73 b2 5e}
0341h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7370278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 02 37 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c7700b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 0b 70 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 81 b2 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 72 b2 5e}
0380h mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c73702e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 02 37 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c7700b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 0b 70 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 81 b2 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 72 b2 5e}
03bch mov rcx,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e1 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c7370258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 37 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c7700b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 0b 70 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 81 b2 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 72 b2 5e}
03f8h mov rax,7ff7c625e160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e1 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c7370308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 03 37 c7 f7 7f 00 00}
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
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a8 79 90 c7 f7 7f 00 00 e8 c0 7b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 6c b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 ef 37 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 81 7b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 6c b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 ef 37 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 42 7b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 6c b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 ef 37 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 03 7b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 6c b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 ef 37 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 c4 7a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 6b b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 85 7a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 6b b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 46 7a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 6b b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 07 7a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 6b b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 c8 79 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 6a b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 89 79 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba 6a b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 4a 79 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b 6a b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 0b 79 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c 6a b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 ee 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 cc 78 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd 69 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 ed 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 8d 78 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be 69 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 ed 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 4e 78 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f 69 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 ed 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 0f 78 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 69 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 ed 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 d0 77 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 69 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 ed 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 91 77 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 68 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 ed 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 52 77 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 68 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 ed 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 13 77 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 68 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 ed 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 d4 76 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 68 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 ec 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 95 76 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 67 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 ec 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 56 76 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 67 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 ec 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 17 76 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 67 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 9b 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a8 79 90 c7 f7 7f 00 00 e8 d8 75 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 67 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 9b 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a8 79 90 c7 f7 7f 00 00 e8 9c 75 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd 66 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 9b 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a8 79 90 c7 f7 7f 00 00 e8 60 75 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 66 b2 5e 48 b8 80 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 28 9b 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 7b b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 6c b2 5e}
004fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c737ef68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ef 37 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 7b b2 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 6c b2 5e}
008eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c737ef48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ef 37 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 7b b2 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 6c b2 5e}
00cdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c737ef28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ef 37 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 7b b2 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 6c b2 5e}
010ch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c737ef08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ef 37 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 7a b2 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 6b b2 5e}
014bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c737eee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ee 37 c7 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 7a b2 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 6b b2 5e}
018ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c737eec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ee 37 c7 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 7a b2 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 6b b2 5e}
01c9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c737eea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ee 37 c7 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 7a b2 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 6b b2 5e}
0208h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c737ee88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ee 37 c7 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 79 b2 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 6a b2 5e}
0247h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c737ee68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ee 37 c7 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 79 b2 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 6a b2 5e}
0286h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c737ee48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ee 37 c7 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 79 b2 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 6a b2 5e}
02c5h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c737ee28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ee 37 c7 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 79 b2 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 6a b2 5e}
0304h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c737ee08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ee 37 c7 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 78 b2 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 69 b2 5e}
0343h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c737ede8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ed 37 c7 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 78 b2 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 69 b2 5e}
0382h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c737edc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ed 37 c7 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 78 b2 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 69 b2 5e}
03c1h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c737eda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ed 37 c7 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 78 b2 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 69 b2 5e}
0400h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c737ed88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ed 37 c7 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 77 b2 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 69 b2 5e}
043fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c737ed68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ed 37 c7 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 77 b2 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 68 b2 5e}
047eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c737ed48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ed 37 c7 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 77 b2 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 68 b2 5e}
04bdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c737ed28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ed 37 c7 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
04e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 77 b2 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 68 b2 5e}
04fch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c737ed08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ed 37 c7 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
0527h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 76 b2 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 68 b2 5e}
053bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c737ece8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ec 37 c7 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 76 b2 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 67 b2 5e}
057ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c737ecc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ec 37 c7 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
05a5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 76 b2 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 67 b2 5e}
05b9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c737eca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ec 37 c7 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
05e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 76 b2 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 67 b2 5e}
05f8h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c7379b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 9b 37 c7 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
0623h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 75 b2 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 67 b2 5e}
0637h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c7379b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9b 37 c7 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
065fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 75 b2 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 66 b2 5e}
0673h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c7379b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 9b 37 c7 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c79079a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 90 c7 f7 7f 00 00}
069bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 75 b2 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 66 b2 5e}
06afh mov rax,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e9 25 c6 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c7379b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 9b 37 c7 f7 7f 00 00}
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
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 d0 6f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 61 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 91 6f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 60 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 52 6f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 60 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 f8 37 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 13 6f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 60 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 f8 37 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 d4 6e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 60 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 f8 37 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 95 6e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 5f b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 f8 37 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 56 6e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 5f b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 f8 37 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 17 6e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 5f b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 f8 37 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 d8 6d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 5f b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 f8 37 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 99 6d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca 5e b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 f0 37 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 5a 6d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b 5e b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 f0 37 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 1b 6d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c 5e b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 f0 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 dc 6c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d 5e b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 f0 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 9d 6c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce 5d b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 f0 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 5e 6c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f 5d b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 f0 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 1f 6c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 5d b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 f0 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 e0 6b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 5d b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 f0 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 a1 6b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 5c b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 f0 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 62 6b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 5c b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 f0 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 23 6b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 5c b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 ef 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 e4 6a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 5c b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 ef 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 a5 6a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 5b b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 ef 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 66 6a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 5b b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 ef 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 27 6a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 5b b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 ef 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 e8 69 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 5b b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 ef 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 ac 69 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd 5a b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 ef 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c8 7d 90 c7 f7 7f 00 00 e8 70 69 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 5a b2 5e 48 b8 80 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 88 ef 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 6f b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 61 b2 5e}
004fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c737f918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f9 37 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 6f b2 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 60 b2 5e}
008eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c737f908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f9 37 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 6f b2 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 60 b2 5e}
00cdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c737f8f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 f8 37 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 6f b2 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 60 b2 5e}
010ch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c737f8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 37 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 6e b2 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 60 b2 5e}
014bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c737f8d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f8 37 c7 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 6e b2 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 5f b2 5e}
018ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c737f8c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f8 37 c7 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 6e b2 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 5f b2 5e}
01c9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c737f8b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f8 37 c7 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 6e b2 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 5f b2 5e}
0208h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c737f8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f8 37 c7 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 6d b2 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 5f b2 5e}
0247h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c737f898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f8 37 c7 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 6d b2 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 5e b2 5e}
0286h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c737f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 37 c7 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 6d b2 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 5e b2 5e}
02c5h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c737f088h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 f0 37 c7 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 6d b2 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 5e b2 5e}
0304h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c737f078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f0 37 c7 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 6c b2 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 5e b2 5e}
0343h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c737f068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 f0 37 c7 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 6c b2 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 5d b2 5e}
0382h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c737f058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f0 37 c7 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 6c b2 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 5d b2 5e}
03c1h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c737f048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f0 37 c7 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 6c b2 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 5d b2 5e}
0400h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c737f038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f0 37 c7 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 6b b2 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 5d b2 5e}
043fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c737f028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 f0 37 c7 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 6b b2 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 5c b2 5e}
047eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c737f018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f0 37 c7 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 6b b2 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 5c b2 5e}
04bdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c737f008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f0 37 c7 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
04e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 6b b2 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 5c b2 5e}
04fch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c737eff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ef 37 c7 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
0527h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 6a b2 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 5c b2 5e}
053bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c737efe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ef 37 c7 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 6a b2 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 5b b2 5e}
057ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c737efd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ef 37 c7 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
05a5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 6a b2 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 5b b2 5e}
05b9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c737efc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ef 37 c7 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
05e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 6a b2 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 5b b2 5e}
05f8h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c737efb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 ef 37 c7 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
0623h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 69 b2 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 5b b2 5e}
0637h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c737efa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ef 37 c7 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
065fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 69 b2 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 5a b2 5e}
0673h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c737ef98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ef 37 c7 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c7907dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7d 90 c7 f7 7f 00 00}
069bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 69 b2 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 5a b2 5e}
06afh mov rax,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e9 25 c6 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c737ef88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 ef 37 c7 f7 7f 00 00}
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
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 38 80 90 c7 f7 7f 00 00 e8 e0 67 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 59 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 a1 67 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 58 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 62 67 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 58 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 23 67 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 58 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 e4 66 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 58 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 a5 66 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 57 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 66 66 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 57 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 27 66 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 57 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 e8 65 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 57 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 a9 65 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 da 56 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 6a 65 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b 56 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 2b 65 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c 56 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 ec 64 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d 56 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 fa 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 ad 64 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 de 55 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 6e 64 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f 55 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 2f 64 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 55 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 f0 63 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 55 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 b1 63 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 54 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 72 63 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 54 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 33 63 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 54 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 f4 62 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 54 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 b5 62 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 53 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 76 62 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 53 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 37 62 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 53 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 f9 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 38 80 90 c7 f7 7f 00 00 e8 f8 61 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 53 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 f9 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 38 80 90 c7 f7 7f 00 00 e8 bc 61 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed 52 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 f9 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 38 80 90 c7 f7 7f 00 00 e8 80 61 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 52 b2 5e 48 b8 80 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 28 f9 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 67 b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 59 b2 5e}
004fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c737fac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fa 37 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 67 b2 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 58 b2 5e}
008eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c737fab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fa 37 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 67 b2 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 58 b2 5e}
00cdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c737faa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 fa 37 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 67 b2 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 58 b2 5e}
010ch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c737fa98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 fa 37 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 66 b2 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 58 b2 5e}
014bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c737fa88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 fa 37 c7 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 66 b2 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 57 b2 5e}
018ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c737fa78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 fa 37 c7 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 66 b2 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 57 b2 5e}
01c9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c737fa68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 fa 37 c7 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 66 b2 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 57 b2 5e}
0208h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c737fa58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fa 37 c7 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 65 b2 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 57 b2 5e}
0247h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c737fa48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 fa 37 c7 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 65 b2 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 56 b2 5e}
0286h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c737fa38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 fa 37 c7 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 65 b2 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 56 b2 5e}
02c5h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c737fa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 fa 37 c7 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 65 b2 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 56 b2 5e}
0304h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c737fa18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 fa 37 c7 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 64 b2 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 56 b2 5e}
0343h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c737fa08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 fa 37 c7 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 64 b2 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 55 b2 5e}
0382h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c737f9f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 f9 37 c7 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 64 b2 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 55 b2 5e}
03c1h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c737f9e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f9 37 c7 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 64 b2 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 55 b2 5e}
0400h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c737f9d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f9 37 c7 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 63 b2 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 55 b2 5e}
043fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c737f9c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f9 37 c7 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 63 b2 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 54 b2 5e}
047eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c737f9b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f9 37 c7 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 63 b2 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 54 b2 5e}
04bdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c737f9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f9 37 c7 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
04e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 63 b2 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 54 b2 5e}
04fch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c737f998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f9 37 c7 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
0527h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 62 b2 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 54 b2 5e}
053bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c737f988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 f9 37 c7 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 62 b2 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 53 b2 5e}
057ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c737f978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f9 37 c7 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
05a5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 62 b2 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 53 b2 5e}
05b9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c737f968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 f9 37 c7 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
05e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 62 b2 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 53 b2 5e}
05f8h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c737f958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f9 37 c7 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
0623h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 61 b2 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 53 b2 5e}
0637h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c737f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 37 c7 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
065fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 61 b2 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 52 b2 5e}
0673h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c737f938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f9 37 c7 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c7908038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 90 c7 f7 7f 00 00}
069bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 61 b2 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 52 b2 5e}
06afh mov rax,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e9 25 c6 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c737f928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 f9 37 c7 f7 7f 00 00}
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
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a8 82 90 c7 f7 7f 00 00 e8 f0 5f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 51 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 fc 37 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 b1 5f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 50 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 fc 37 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 72 5f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 50 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 fc 37 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 33 5f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 50 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 fc 37 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 f4 5e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 50 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 fc 37 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 b5 5e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 4f b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 fc 37 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 76 5e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 4f b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 fc 37 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 37 5e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 4f b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 fc 37 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 f8 5d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 4f b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 b9 5d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea 4e b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 7a 5d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab 4e b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 3b 5d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c 4e b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 fc 5c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d 4e b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 bd 5c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee 4d b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 7e 5c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 af 4d b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 3f 5c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 70 4d b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 00 5c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 4d b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 c1 5b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 4c b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 82 5b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 4c b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 43 5b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 4c b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 04 5b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 4c b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 c5 5a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 4b b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 86 5a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 4b b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 47 5a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 4b b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 fb 37 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a8 82 90 c7 f7 7f 00 00 e8 08 5a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 4b b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 fa 37 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a8 82 90 c7 f7 7f 00 00 e8 cc 59 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd 4a b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 fa 37 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a8 82 90 c7 f7 7f 00 00 e8 90 59 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 4a b2 5e 48 b8 80 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d8 fa 37 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 5f b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 51 b2 5e}
004fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c737fc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 fc 37 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 5f b2 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 50 b2 5e}
008eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c737fc68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 fc 37 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 5f b2 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 50 b2 5e}
00cdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c737fc58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fc 37 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 5f b2 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 50 b2 5e}
010ch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c737fc48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 fc 37 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 5e b2 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 50 b2 5e}
014bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c737fc38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 fc 37 c7 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 5e b2 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 4f b2 5e}
018ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c737fc28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 fc 37 c7 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 5e b2 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 4f b2 5e}
01c9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c737fc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 fc 37 c7 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 5e b2 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 4f b2 5e}
0208h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c737fc08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 fc 37 c7 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 5d b2 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 4f b2 5e}
0247h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c737fbf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 fb 37 c7 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 5d b2 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 4e b2 5e}
0286h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c737fbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 fb 37 c7 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 5d b2 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 4e b2 5e}
02c5h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c737fbd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 fb 37 c7 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 5d b2 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 4e b2 5e}
0304h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c737fbc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fb 37 c7 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 5c b2 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 4e b2 5e}
0343h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c737fbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fb 37 c7 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 5c b2 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 4d b2 5e}
0382h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c737fba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 fb 37 c7 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 5c b2 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 4d b2 5e}
03c1h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c737fb98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 fb 37 c7 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 5c b2 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 4d b2 5e}
0400h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c737fb88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 fb 37 c7 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 5c b2 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 4d b2 5e}
043fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c737fb78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 fb 37 c7 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 5b b2 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 4c b2 5e}
047eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c737fb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 fb 37 c7 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 5b b2 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 4c b2 5e}
04bdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c737fb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb 37 c7 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
04e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 5b b2 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 4c b2 5e}
04fch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c737fb48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 fb 37 c7 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
0527h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 5b b2 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 4c b2 5e}
053bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c737fb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 fb 37 c7 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 5a b2 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 4b b2 5e}
057ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c737fb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 fb 37 c7 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
05a5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 5a b2 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 4b b2 5e}
05b9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c737fb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 fb 37 c7 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
05e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 5a b2 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 4b b2 5e}
05f8h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c737fb08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 fb 37 c7 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
0623h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 5a b2 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 4b b2 5e}
0637h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c737faf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 fa 37 c7 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
065fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 59 b2 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 4a b2 5e}
0673h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c737fae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 fa 37 c7 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c79082a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 90 c7 f7 7f 00 00}
069bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 59 b2 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 4a b2 5e}
06afh mov rax,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e9 25 c6 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c737fad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 fa 37 c7 f7 7f 00 00}
06c7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06ceh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
06d2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
06d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d6h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<uint>> lookup<uint>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_TernaryBitLogicKind~8u[1210] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 18 85 90 c7 f7 7f 00 00 e8 00 54 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 45 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 18 85 90 c7 f7 7f 00 00 e8 c1 53 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 44 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 18 85 90 c7 f7 7f 00 00 e8 82 53 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 44 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 18 85 90 c7 f7 7f 00 00 e8 43 53 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 44 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 18 85 90 c7 f7 7f 00 00 e8 04 53 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 44 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 18 85 90 c7 f7 7f 00 00 e8 c5 52 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 43 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 18 85 90 c7 f7 7f 00 00 e8 86 52 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 43 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 18 85 90 c7 f7 7f 00 00 e8 47 52 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 43 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 18 85 90 c7 f7 7f 00 00 e8 08 52 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 43 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 18 85 90 c7 f7 7f 00 00 e8 c9 51 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa 42 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 18 85 90 c7 f7 7f 00 00 e8 8a 51 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb 42 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 18 85 90 c7 f7 7f 00 00 e8 4b 51 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c 42 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 18 85 90 c7 f7 7f 00 00 e8 0c 51 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d 42 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 18 85 90 c7 f7 7f 00 00 e8 cd 50 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe 41 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 18 85 90 c7 f7 7f 00 00 e8 8e 50 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf 41 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 18 85 90 c7 f7 7f 00 00 e8 4f 50 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 80 41 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 15 38 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 18 85 90 c7 f7 7f 00 00 e8 10 50 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 41 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 14 38 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 18 85 90 c7 f7 7f 00 00 e8 d1 4f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 41 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 14 38 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 18 85 90 c7 f7 7f 00 00 e8 92 4f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c7908518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 85 90 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 54 b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 45 b2 5e}
004fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c73815f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 15 38 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c7908518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 85 90 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 53 b2 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 44 b2 5e}
008eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c73815e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 15 38 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c7908518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 85 90 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 53 b2 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 44 b2 5e}
00cdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c73815d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 15 38 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c7908518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 85 90 c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 53 b2 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 44 b2 5e}
010ch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c73815c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 15 38 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c7908518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 85 90 c7 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 53 b2 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 44 b2 5e}
014bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c73815b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 15 38 c7 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c7908518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 85 90 c7 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 52 b2 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 43 b2 5e}
018ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c73815a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 15 38 c7 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c7908518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 85 90 c7 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 52 b2 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 43 b2 5e}
01c9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c7381598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 15 38 c7 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c7908518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 85 90 c7 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 52 b2 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 43 b2 5e}
0208h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c7381588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 15 38 c7 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c7908518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 85 90 c7 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 52 b2 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 43 b2 5e}
0247h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c7381578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 15 38 c7 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c7908518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 85 90 c7 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 51 b2 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 42 b2 5e}
0286h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c7381568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 15 38 c7 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c7908518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 85 90 c7 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 51 b2 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 42 b2 5e}
02c5h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c7381558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 15 38 c7 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c7908518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 85 90 c7 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 51 b2 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 42 b2 5e}
0304h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c7381548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 15 38 c7 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c7908518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 85 90 c7 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 51 b2 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 42 b2 5e}
0343h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c7381538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 15 38 c7 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c7908518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 85 90 c7 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 50 b2 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 41 b2 5e}
0382h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c7381528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 15 38 c7 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c7908518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 85 90 c7 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 50 b2 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 41 b2 5e}
03c1h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c7381518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 15 38 c7 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c7908518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 85 90 c7 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 50 b2 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 41 b2 5e}
0400h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c7381508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 15 38 c7 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c7908518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 85 90 c7 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 50 b2 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 41 b2 5e}
043fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c73814f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 14 38 c7 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c7908518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 85 90 c7 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 4f b2 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 41 b2 5e}
047eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c73814e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 14 38 c7 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c7908518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 85 90 c7 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 4f b2 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<int>> lookup<int>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_TernaryBitLogicKind~8u[202] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 88 87 90 c7 f7 7f 00 00 e8 10 4c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 3d b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 17 38 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 88 87 90 c7 f7 7f 00 00 e8 d1 4b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 3d b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 17 38 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 88 87 90 c7 f7 7f 00 00 e8 92 4b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c7908788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 87 90 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 4c b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 3d b2 5e}
004fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c73817a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 17 38 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c7908788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 87 90 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 4b b2 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 3d b2 5e}
008eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7381798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 17 38 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c7908788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 87 90 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 4b b2 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<ulong>> lookup<ulong>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f8 89 90 c7 f7 7f 00 00 e8 20 40 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 51 31 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 29 38 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 e1 3f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 31 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 29 38 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 a2 3f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 30 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 29 38 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 63 3f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 30 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 29 38 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 24 3f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 30 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 28 38 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 e5 3e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 16 30 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 28 38 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 a6 3e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d7 2f b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 28 38 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 67 3e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 2f b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 28 38 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 28 3e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 2f b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 28 38 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 e9 3d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1a 2f b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 28 38 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 aa 3d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db 2e b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 28 38 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 6b 3d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c 2e b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 28 38 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 2c 3d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d 2e b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 28 38 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 ed 3c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1e 2e b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 28 38 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 ae 3c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 df 2d b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 28 38 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 6f 3c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a0 2d b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 28 38 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 30 3c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 2d b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 18 38 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 f1 3b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 2d b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 18 38 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 b2 3b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 2c b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 18 38 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 73 3b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 2c b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 18 38 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 34 3b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 2c b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 18 38 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 f5 3a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 2c b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 18 38 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 b6 3a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 2b b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 17 38 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 77 3a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 2b b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 17 38 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f8 89 90 c7 f7 7f 00 00 e8 38 3a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 2b b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 17 38 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f8 89 90 c7 f7 7f 00 00 e8 fc 39 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d 2b b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 17 38 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f8 89 90 c7 f7 7f 00 00 e8 c0 39 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 2a b2 5e 48 b8 80 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 b8 17 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 40 b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 31 b2 5e}
004fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7382938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 29 38 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 3f b2 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 31 b2 5e}
008eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7382928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 29 38 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 3f b2 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 30 b2 5e}
00cdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7382918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 29 38 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 3f b2 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 30 b2 5e}
010ch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7382908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 29 38 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 3f b2 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 30 b2 5e}
014bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c73828f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 28 38 c7 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 3e b2 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 30 b2 5e}
018ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c73828e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 28 38 c7 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 3e b2 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 2f b2 5e}
01c9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c73828d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 28 38 c7 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 3e b2 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 2f b2 5e}
0208h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c73828c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 28 38 c7 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 3e b2 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 2f b2 5e}
0247h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c73828b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 28 38 c7 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 3d b2 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 2f b2 5e}
0286h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c73828a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 28 38 c7 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 3d b2 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 2e b2 5e}
02c5h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c7382898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 28 38 c7 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 3d b2 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 2e b2 5e}
0304h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c7382888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 28 38 c7 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 3d b2 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 2e b2 5e}
0343h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c7382878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 28 38 c7 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 3c b2 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 2e b2 5e}
0382h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c7382868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 28 38 c7 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 3c b2 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 2d b2 5e}
03c1h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c7382858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 28 38 c7 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 3c b2 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 2d b2 5e}
0400h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c7382848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 28 38 c7 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 3c b2 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 2d b2 5e}
043fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c7381858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 18 38 c7 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 3b b2 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 2d b2 5e}
047eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c7381848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 18 38 c7 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 3b b2 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 2c b2 5e}
04bdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c7381838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 18 38 c7 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
04e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 3b b2 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 2c b2 5e}
04fch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c7381828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 18 38 c7 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
0527h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 3b b2 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 2c b2 5e}
053bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c7381818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 18 38 c7 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 3a b2 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 2c b2 5e}
057ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c7381808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 18 38 c7 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
05a5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 3a b2 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 2b b2 5e}
05b9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c73817f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 17 38 c7 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
05e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 3a b2 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 2b b2 5e}
05f8h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c73817e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 17 38 c7 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
0623h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 3a b2 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 2b b2 5e}
0637h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c73817d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 17 38 c7 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
065fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 39 b2 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 2b b2 5e}
0673h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c73817c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 17 38 c7 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c79089f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 90 c7 f7 7f 00 00}
069bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 39 b2 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 2a b2 5e}
06afh mov rax,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e9 25 c6 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c73817b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 17 38 c7 f7 7f 00 00}
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
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 68 8c 90 c7 f7 7f 00 00 e8 30 38 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 29 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 2a 38 c7 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 f1 37 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 29 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 2a 38 c7 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 b2 37 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 28 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 2a 38 c7 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 73 37 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 28 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 2a 38 c7 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 34 37 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 28 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 2a 38 c7 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 f5 36 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 28 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 2a 38 c7 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 b6 36 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 27 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 2a 38 c7 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 77 36 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 27 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 2a 38 c7 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 38 36 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 27 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 2a 38 c7 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 f9 35 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2a 27 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 2a 38 c7 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 ba 35 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb 26 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 2a 38 c7 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 7b 35 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac 26 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 2a 38 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 3c 35 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d 26 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 2a 38 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 fd 34 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2e 26 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 2a 38 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 be 34 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ef 25 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 2a 38 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 7f 34 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b0 25 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 29 38 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 40 34 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 25 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 29 38 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 01 34 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 25 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 29 38 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 c2 33 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 24 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 29 38 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 83 33 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 24 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 29 38 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 44 33 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 24 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 29 38 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 05 33 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 24 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 29 38 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 c6 32 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 23 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 29 38 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 87 32 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 23 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 29 38 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 68 8c 90 c7 f7 7f 00 00 e8 48 32 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 23 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 29 38 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 68 8c 90 c7 f7 7f 00 00 e8 0c 32 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d 23 b2 5e 48 b9 80 e9 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 29 38 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 68 8c 90 c7 f7 7f 00 00 e8 d0 31 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 23 b2 5e 48 b8 80 e9 25 c6 f7 7f 00 00 48 89 46 18 48 b8 48 29 38 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 38 b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 29 b2 5e}
004fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7382ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 2a 38 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 37 b2 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 29 b2 5e}
008eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7382ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 2a 38 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 37 b2 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 28 b2 5e}
00cdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7382ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 2a 38 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 37 b2 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 28 b2 5e}
010ch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7382ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 2a 38 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 37 b2 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 28 b2 5e}
014bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c7382aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 2a 38 c7 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 36 b2 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 28 b2 5e}
018ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c7382a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 38 c7 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 36 b2 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 27 b2 5e}
01c9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c7382a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 2a 38 c7 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 36 b2 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 27 b2 5e}
0208h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c7382a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 2a 38 c7 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 36 b2 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 27 b2 5e}
0247h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c7382a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 2a 38 c7 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 35 b2 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 27 b2 5e}
0286h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c7382a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 2a 38 c7 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 35 b2 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 26 b2 5e}
02c5h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c7382a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 2a 38 c7 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 35 b2 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 26 b2 5e}
0304h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c7382a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 38 c7 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 35 b2 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 26 b2 5e}
0343h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c7382a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 2a 38 c7 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 34 b2 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 26 b2 5e}
0382h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c7382a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 2a 38 c7 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 34 b2 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 25 b2 5e}
03c1h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c7382a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 2a 38 c7 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 34 b2 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 25 b2 5e}
0400h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c73829f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 29 38 c7 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 34 b2 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 25 b2 5e}
043fh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c73829e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 29 38 c7 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 34 b2 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 25 b2 5e}
047eh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c73829d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 29 38 c7 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 33 b2 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 24 b2 5e}
04bdh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c73829c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 29 38 c7 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
04e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 33 b2 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 24 b2 5e}
04fch mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c73829b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 29 38 c7 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
0527h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 33 b2 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 24 b2 5e}
053bh mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c73829a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 29 38 c7 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 33 b2 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 24 b2 5e}
057ah mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c7382998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 29 38 c7 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
05a5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 32 b2 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 23 b2 5e}
05b9h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c7382988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 29 38 c7 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
05e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 32 b2 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 23 b2 5e}
05f8h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c7382978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 29 38 c7 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
0623h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 32 b2 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 23 b2 5e}
0637h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c7382968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 29 38 c7 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
065fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 32 b2 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 23 b2 5e}
0673h mov rcx,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 25 c6 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c7382958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 29 38 c7 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c7908c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 90 c7 f7 7f 00 00}
069bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 31 b2 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 23 b2 5e}
06afh mov rax,7ff7c625e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e9 25 c6 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c7382948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 29 38 c7 f7 7f 00 00}
06c7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06ceh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
06d2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
06d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d6h ret                                     ; RET || C3 || encoded[1]{c3}
