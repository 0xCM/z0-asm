------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<byte>> lookup<byte>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_g[8u](n128,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 60 c0 9c c8 f7 7f 00 00 e8 67 ed b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 de b9 5e 48 b8 30 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 40 b4 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c89cc060h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 c0 9c c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 ed b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 de b9 5e}
0038h mov rax,7ff7c761e430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bb440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 b4 6b c8 f7 7f 00 00}
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
; lookup_g[8i](n128,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 f0 ee 9c c8 f7 7f 00 00 e8 17 ec b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 dd b9 5e 48 b8 30 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 e0 b4 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c89ceef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 ee 9c c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 ec b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 dd b9 5e}
0038h mov rax,7ff7c761e430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bb4e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 b4 6b c8 f7 7f 00 00}
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
; lookup_g[16u](n128,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 10 c2 9c c8 f7 7f 00 00 e8 c7 ea b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 db b9 5e 48 b8 30 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 30 b5 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c89cc210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 c2 9c c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 ea b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 db b9 5e}
0038h mov rax,7ff7c761e430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bb530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 b5 6b c8 f7 7f 00 00}
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
; lookup_g[16i](n128,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 10 cd 9c c8 f7 7f 00 00 e8 77 e9 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 da b9 5e 48 b8 30 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 80 b5 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c89ccd10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 cd 9c c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 e9 b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 da b9 5e}
0038h mov rax,7ff7c761e430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bb580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 b5 6b c8 f7 7f 00 00}
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
; lookup_g[32u](n128,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 a0 c4 9c c8 f7 7f 00 00 e8 27 e8 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 d9 b9 5e 48 b8 30 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 d0 b5 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c89cc4a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 c4 9c c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 e8 b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 d9 b9 5e}
0038h mov rax,7ff7c761e430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bb5d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 b5 6b c8 f7 7f 00 00}
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
; lookup_g[32i](n128,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 c0 ce 9c c8 f7 7f 00 00 e8 d7 e6 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 d8 b9 5e 48 b8 30 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 18 d7 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c89ccec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 ce 9c c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 e6 b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 d8 b9 5e}
0038h mov rax,7ff7c761e430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bd718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 d7 6b c8 f7 7f 00 00}
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
; lookup_g[64u](n128,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 90 a3 9c c8 f7 7f 00 00 e8 87 e5 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 d6 b9 5e 48 b8 30 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 68 d7 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c89ca390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 a3 9c c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 e5 b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 d6 b9 5e}
0038h mov rax,7ff7c761e430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bd768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 d7 6b c8 f7 7f 00 00}
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
; lookup_g[64i](n128,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 a0 f0 9c c8 f7 7f 00 00 e8 37 e4 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 d5 b9 5e 48 b8 30 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 b8 d7 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c89cf0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f0 9c c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 e4 b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 d5 b9 5e}
0038h mov rax,7ff7c761e430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bd7b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 d7 6b c8 f7 7f 00 00}
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
; lookup_g[8u](n256,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 00 c8 9c c8 f7 7f 00 00 e8 e7 e2 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 d4 b9 5e 48 b8 30 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 a8 d8 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c89cc800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 c8 9c c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 e2 b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 d4 b9 5e}
0038h mov rax,7ff7c761e430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 d8 6b c8 f7 7f 00 00}
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
; lookup_g[8i](n256,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 50 f2 9c c8 f7 7f 00 00 e8 97 e1 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 d2 b9 5e 48 b8 30 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 48 d9 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c89cf250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f2 9c c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 e1 b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 d2 b9 5e}
0038h mov rax,7ff7c761e430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bd948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 d9 6b c8 f7 7f 00 00}
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
; lookup_g[16u](n256,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 b0 c9 9c c8 f7 7f 00 00 e8 47 e0 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 d1 b9 5e 48 b8 30 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 98 d9 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c89cc9b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 c9 9c c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 e0 b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 d1 b9 5e}
0038h mov rax,7ff7c761e430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bd998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 d9 6b c8 f7 7f 00 00}
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
; lookup_g[16i](n256,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 70 d0 9c c8 f7 7f 00 00 e8 f7 de b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 d0 b9 5e 48 b8 30 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 e8 d9 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c89cd070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d0 9c c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 de b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 d0 b9 5e}
0038h mov rax,7ff7c761e430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bd9e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 d9 6b c8 f7 7f 00 00}
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
; lookup_g[32u](n256,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 60 cb 9c c8 f7 7f 00 00 e8 a7 dd b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 ce b9 5e 48 b8 30 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 38 da 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c89ccb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 cb 9c c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 dd b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 ce b9 5e}
0038h mov rax,7ff7c761e430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bda38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 da 6b c8 f7 7f 00 00}
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
; lookup_g[32i](n256,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 20 d2 9c c8 f7 7f 00 00 e8 57 dc b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 88 cd b9 5e 48 b8 30 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 88 da 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c89cd220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 d2 9c c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 dc b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 cd b9 5e}
0038h mov rax,7ff7c761e430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bda88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 da 6b c8 f7 7f 00 00}
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
; lookup_g[64u](n256,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 50 c6 9c c8 f7 7f 00 00 e8 07 db b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 cc b9 5e 48 b8 30 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 d8 da 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c89cc650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 c6 9c c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 db b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 cc b9 5e}
0038h mov rax,7ff7c761e430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86bdad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 da 6b c8 f7 7f 00 00}
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
; lookup_g[64i](n256,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 e0 13 9f c8 f7 7f 00 00 e8 b7 d9 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 ca b9 5e 48 b8 30 e4 61 c7 f7 7f 00 00 48 89 46 18 48 b8 b8 e8 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
001ah mov rcx,7ff7c89f13e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 13 9f c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 d9 b9 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 ca b9 5e}
0038h mov rax,7ff7c761e430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 e4 61 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86be8b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 e8 6b c8 f7 7f 00 00}
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
; lookup_g[8u](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b0 61 9c c8 f7 7f 00 00 e8 50 d8 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 c9 b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 c8 e9 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c89c61b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 61 9c c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 d8 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 c9 b9 5e}
004fh mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86be9c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 e9 6b c8 f7 7f 00 00}
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
; lookup_g[8i](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 80 5e 9c c8 f7 7f 00 00 e8 90 d6 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 c7 b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 48 ea 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c89c5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e 9c c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 d6 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 c7 b9 5e}
004fh mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86bea48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 ea 6b c8 f7 7f 00 00}
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
; lookup_g[16u](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 20 5b 9c c8 f7 7f 00 00 e8 d0 d4 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 c6 b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 88 ea 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c89c5b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 5b 9c c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 d4 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 c6 b9 5e}
004fh mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86bea88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 ea 6b c8 f7 7f 00 00}
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
; lookup_g[16i](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 70 59 9c c8 f7 7f 00 00 e8 10 d3 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 c4 b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 c8 ea 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c89c5970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 59 9c c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 d3 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 c4 b9 5e}
004fh mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86beac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 ea 6b c8 f7 7f 00 00}
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
; lookup_g[32u](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c0 6c 9c c8 f7 7f 00 00 e8 50 d1 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 c2 b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 08 eb 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c89c6cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 6c 9c c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 d1 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 c2 b9 5e}
004fh mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86beb08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 eb 6b c8 f7 7f 00 00}
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
; lookup_g[32i](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 90 69 9c c8 f7 7f 00 00 e8 90 cf b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 c0 b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 48 eb 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c89c6990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 69 9c c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 cf b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 c0 b9 5e}
004fh mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86beb48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 eb 6b c8 f7 7f 00 00}
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
; lookup_g[64u](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e0 64 9c c8 f7 7f 00 00 e8 d0 cd b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 bf b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 88 eb 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c89c64e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 64 9c c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 cd b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 bf b9 5e}
004fh mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86beb88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 eb 6b c8 f7 7f 00 00}
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
; lookup_g[64i](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f0 6f 9c c8 f7 7f 00 00 e8 10 cc b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 bd b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 48 ec 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c89c6ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6f 9c c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 cc b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 bd b9 5e}
004fh mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86bec48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 ec 6b c8 f7 7f 00 00}
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
; lookup_g[8u](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f0 8f 9c c8 f7 7f 00 00 e8 50 c6 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 b7 b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 78 fb 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c89c8ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8f 9c c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 c6 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 b7 b9 5e}
004fh mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86bfb78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 fb 6b c8 f7 7f 00 00}
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
; lookup_g[8i](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c0 8c 9c c8 f7 7f 00 00 e8 90 c4 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 b5 b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 f8 fb 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c89c8cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8c 9c c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 c4 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 b5 b9 5e}
004fh mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86bfbf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 fb 6b c8 f7 7f 00 00}
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
; lookup_g[16u](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 68 ee 9b c8 f7 7f 00 00 e8 d0 c2 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 b4 b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 38 fc 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c89bee68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ee 9b c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 c2 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 b4 b9 5e}
004fh mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86bfc38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 fc 6b c8 f7 7f 00 00}
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
; lookup_g[16i](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d0 5c 9c c8 f7 7f 00 00 e8 10 c1 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 b2 b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 78 fc 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c89c5cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5c 9c c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 c1 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 b2 b9 5e}
004fh mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86bfc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 fc 6b c8 f7 7f 00 00}
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
; lookup_g[32u](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 50 99 9c c8 f7 7f 00 00 e8 50 bf b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 b0 b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 b8 fc 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c89c9950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 99 9c c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 bf b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 b0 b9 5e}
004fh mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86bfcb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 fc 6b c8 f7 7f 00 00}
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
; lookup_g[32i](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 20 96 9c c8 f7 7f 00 00 e8 90 bd b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 ae b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 f8 fc 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c89c9620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 9c c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 bd b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 ae b9 5e}
004fh mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86bfcf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 fc 6b c8 f7 7f 00 00}
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
; lookup_g[64u](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b0 9f 9c c8 f7 7f 00 00 e8 d0 bb b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 ad b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 38 fd 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c89c9fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 9f 9c c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 bb b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 ad b9 5e}
004fh mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86bfd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 fd 6b c8 f7 7f 00 00}
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
; lookup_g[64i](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 80 9c 9c c8 f7 7f 00 00 e8 10 ba b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 ab b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 d8 09 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c89c9c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9c 9c c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 ba b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 ab b9 5e}
004fh mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86c09d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 09 6c c8 f7 7f 00 00}
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
; lookup_g[8u](n128,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 38 27 c2 c8 f7 7f 00 00 e8 4a b8 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b a9 b9 5e 48 b8 60 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 c0 a3 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8c22738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 27 c2 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a b8 b9 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b a9 b9 5e}
0055h mov rax,7ff7c761ec60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 ec 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86ca3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 a3 6c c8 f7 7f 00 00}
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
; lookup_g[8i](n128,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 a8 2c c2 c8 f7 7f 00 00 e8 3a b6 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b a7 b9 5e 48 b8 60 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 88 a4 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8c22ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 2c c2 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a b6 b9 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b a7 b9 5e}
0055h mov rax,7ff7c761ec60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 ec 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86ca488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 a4 6c c8 f7 7f 00 00}
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
; lookup_g[16u](n128,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 38 30 c2 c8 f7 7f 00 00 e8 2a b4 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b a5 b9 5e 48 b8 60 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 00 a5 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8c23038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 30 c2 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a b4 b9 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b a5 b9 5e}
0055h mov rax,7ff7c761ec60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 ec 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86ca500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 a5 6c c8 f7 7f 00 00}
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
; lookup_g[16i](n128,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 c8 33 c2 c8 f7 7f 00 00 e8 1a b2 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b a3 b9 5e 48 b8 60 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 78 a5 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8c233c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 33 c2 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a b2 b9 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b a3 b9 5e}
0055h mov rax,7ff7c761ec60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 ec 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86ca578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 a5 6c c8 f7 7f 00 00}
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
; lookup_g[32u](n128,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 58 37 c2 c8 f7 7f 00 00 e8 0a ac b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3b 9d b9 5e 48 b8 60 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 f0 a5 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8c23758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 37 c2 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a ac b9 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 9d b9 5e}
0055h mov rax,7ff7c761ec60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 ec 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86ca5f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 a5 6c c8 f7 7f 00 00}
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
; lookup_g[32i](n128,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 e8 3a c2 c8 f7 7f 00 00 e8 fa a9 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2b 9b b9 5e 48 b8 60 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 b0 bc 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8c23ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 3a c2 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa a9 b9 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 9b b9 5e}
0055h mov rax,7ff7c761ec60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 ec 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86cbcb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 bc 6c c8 f7 7f 00 00}
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
; lookup_g[64u](n128,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 78 3e c2 c8 f7 7f 00 00 e8 ea a7 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b 99 b9 5e 48 b8 60 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 28 bd 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8c23e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 3e c2 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea a7 b9 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 99 b9 5e}
0055h mov rax,7ff7c761ec60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 ec 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86cbd28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 bd 6c c8 f7 7f 00 00}
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
; lookup_g[64i](n128,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 08 42 c2 c8 f7 7f 00 00 e8 da a5 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 97 b9 5e 48 b8 60 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 a0 bd 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8c24208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 42 c2 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da a5 b9 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 97 b9 5e}
0055h mov rax,7ff7c761ec60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 ec 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86cbda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 bd 6c c8 f7 7f 00 00}
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
; lookup_g[8u](n256,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 b0 49 c2 c8 f7 7f 00 00 e8 ca a3 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb 94 b9 5e 48 b8 60 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 c0 be 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8c249b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 49 c2 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca a3 b9 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 94 b9 5e}
0055h mov rax,7ff7c761ec60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 ec 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86cbec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 be 6c c8 f7 7f 00 00}
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
; lookup_g[8i](n256,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 20 4f c2 c8 f7 7f 00 00 e8 ba a1 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb 92 b9 5e 48 b8 60 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 88 bf 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8c24f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 4f c2 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba a1 b9 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 92 b9 5e}
0055h mov rax,7ff7c761ec60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 ec 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86cbf88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 bf 6c c8 f7 7f 00 00}
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
; lookup_g[16u](n256,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 b0 52 c2 c8 f7 7f 00 00 e8 aa 9f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db 90 b9 5e 48 b8 60 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 00 c0 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8c252b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 52 c2 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 9f b9 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 90 b9 5e}
0055h mov rax,7ff7c761ec60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 ec 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86cc000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 c0 6c c8 f7 7f 00 00}
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
; lookup_g[16i](n256,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 40 56 c2 c8 f7 7f 00 00 e8 9a 99 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cb 8a b9 5e 48 b8 60 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 f0 ce 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8c25640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 56 c2 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 99 b9 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 8a b9 5e}
0055h mov rax,7ff7c761ec60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 ec 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86ccef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 ce 6c c8 f7 7f 00 00}
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
; lookup_g[32u](n256,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 d0 59 c2 c8 f7 7f 00 00 e8 8a 97 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb 88 b9 5e 48 b8 60 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 68 cf 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8c259d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 59 c2 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 97 b9 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 88 b9 5e}
0055h mov rax,7ff7c761ec60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 ec 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86ccf68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 cf 6c c8 f7 7f 00 00}
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
; lookup_g[32i](n256,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 60 5d c2 c8 f7 7f 00 00 e8 7a 95 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab 86 b9 5e 48 b8 60 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 e0 cf 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8c25d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d c2 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 95 b9 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 86 b9 5e}
0055h mov rax,7ff7c761ec60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 ec 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86ccfe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 cf 6c c8 f7 7f 00 00}
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
; lookup_g[64u](n256,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 f0 60 c2 c8 f7 7f 00 00 e8 6a 93 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b 84 b9 5e 48 b8 60 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 58 d0 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8c260f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 c2 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 93 b9 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 84 b9 5e}
0055h mov rax,7ff7c761ec60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 ec 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86cd058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 d0 6c c8 f7 7f 00 00}
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
; lookup_g[64i](n256,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 80 64 c2 c8 f7 7f 00 00 e8 5a 91 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b 82 b9 5e 48 b8 60 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 d0 d0 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0037h mov rcx,7ff7c8c26480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 64 c2 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 91 b9 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 82 b9 5e}
0055h mov rax,7ff7c761ec60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 ec 61 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86cd0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 d0 6c c8 f7 7f 00 00}
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
; lookup_g[8u](n128,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 b0 61 9c c8 f7 7f 00 00 e8 52 8b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 7c b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 0a 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 b0 61 9c c8 f7 7f 00 00 e8 13 8b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 7c b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 0c 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 b0 61 9c c8 f7 7f 00 00 e8 d4 8a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 7c b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 0c 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 b0 61 9c c8 f7 7f 00 00 e8 95 8a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 7b b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 0a 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 b0 61 9c c8 f7 7f 00 00 e8 56 8a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 7b b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 0b 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 b0 61 9c c8 f7 7f 00 00 e8 17 8a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 7b b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 0b 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 b0 61 9c c8 f7 7f 00 00 e8 d8 89 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 7b b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 0b 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 b0 61 9c c8 f7 7f 00 00 e8 99 89 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca 7a b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 0b 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 b0 61 9c c8 f7 7f 00 00 e8 5a 89 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b 7a b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 0c 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 b0 61 9c c8 f7 7f 00 00 e8 1b 89 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c 7a b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 0b 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 b0 61 9c c8 f7 7f 00 00 e8 dc 88 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d 7a b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 0a 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b0 61 9c c8 f7 7f 00 00 e8 9d 88 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce 79 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 0b 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b0 61 9c c8 f7 7f 00 00 e8 5e 88 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f 79 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 0b 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b0 61 9c c8 f7 7f 00 00 e8 1f 88 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 79 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 0b 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b0 61 9c c8 f7 7f 00 00 e8 e3 87 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 79 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 0a 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b0 61 9c c8 f7 7f 00 00 e8 a7 87 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 78 b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 28 0c 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c89c61b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 61 9c c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 8b b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 7c b9 5e}
004dh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c0a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0a 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89c61b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 61 9c c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 8b b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 7c b9 5e}
008ch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c0c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 0c 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89c61b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 61 9c c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 8a b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 7c b9 5e}
00cbh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c0c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 0c 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89c61b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 61 9c c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 8a b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 7b b9 5e}
010ah mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c0aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0a 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89c61b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 61 9c c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 8a b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 7b b9 5e}
0149h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c0b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0b 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89c61b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 61 9c c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 8a b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 7b b9 5e}
0188h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c0b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 0b 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89c61b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 61 9c c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 89 b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 7b b9 5e}
01c7h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89c61b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 61 9c c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 89 b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 7a b9 5e}
0206h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c0b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 0b 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89c61b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 61 9c c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 89 b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 7a b9 5e}
0245h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c0c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 0c 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89c61b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 61 9c c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 89 b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 7a b9 5e}
0284h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c0bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0b 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89c61b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 61 9c c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 88 b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 7a b9 5e}
02c3h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c0ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 0a 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89c61b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 61 9c c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 88 b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 79 b9 5e}
0302h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c0b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 0b 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89c61b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 61 9c c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 88 b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 79 b9 5e}
0341h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c0b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 0b 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89c61b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 61 9c c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 88 b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 79 b9 5e}
0380h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c0be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 0b 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89c61b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 61 9c c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 87 b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 79 b9 5e}
03bch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c0ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0a 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89c61b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 61 9c c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 87 b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 78 b9 5e}
03f8h mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c0c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 0c 6c c8 f7 7f 00 00}
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
; lookup_g[8i](n128,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 80 5e 9c c8 f7 7f 00 00 e8 42 86 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 77 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 13 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 80 5e 9c c8 f7 7f 00 00 e8 03 86 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 77 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 14 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 80 5e 9c c8 f7 7f 00 00 e8 c4 85 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 76 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 14 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 80 5e 9c c8 f7 7f 00 00 e8 85 85 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 76 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 13 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 80 5e 9c c8 f7 7f 00 00 e8 46 85 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 76 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 13 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 80 5e 9c c8 f7 7f 00 00 e8 07 85 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 76 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 13 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 80 5e 9c c8 f7 7f 00 00 e8 c8 84 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 75 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 13 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 80 5e 9c c8 f7 7f 00 00 e8 89 84 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba 75 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 13 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 80 5e 9c c8 f7 7f 00 00 e8 4a 84 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b 75 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 14 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 80 5e 9c c8 f7 7f 00 00 e8 0b 84 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c 75 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 13 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 80 5e 9c c8 f7 7f 00 00 e8 cc 83 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd 74 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 13 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 80 5e 9c c8 f7 7f 00 00 e8 8d 83 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be 74 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 13 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 80 5e 9c c8 f7 7f 00 00 e8 4e 83 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f 74 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 13 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 80 5e 9c c8 f7 7f 00 00 e8 0f 83 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 74 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 14 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 80 5e 9c c8 f7 7f 00 00 e8 d3 82 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 74 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 13 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 80 5e 9c c8 f7 7f 00 00 e8 97 82 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 73 b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 20 14 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c89c5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e 9c c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 86 b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 77 b9 5e}
004dh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c1350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 13 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89c5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e 9c c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 86 b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 77 b9 5e}
008ch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c1440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 14 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89c5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e 9c c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 85 b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 76 b9 5e}
00cbh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c1430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 14 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89c5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e 9c c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 85 b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 76 b9 5e}
010ah mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c1360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 13 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89c5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e 9c c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 85 b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 76 b9 5e}
0149h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c13d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 13 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89c5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e 9c c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 85 b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 76 b9 5e}
0188h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c13c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 13 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89c5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e 9c c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 84 b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 75 b9 5e}
01c7h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c13e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 13 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89c5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e 9c c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 84 b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 75 b9 5e}
0206h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c13b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 13 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89c5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e 9c c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 84 b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 75 b9 5e}
0245h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c1410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 14 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89c5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e 9c c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 84 b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 75 b9 5e}
0284h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c13f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 13 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89c5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e 9c c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 83 b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 74 b9 5e}
02c3h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c1380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 13 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89c5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e 9c c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 83 b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 74 b9 5e}
0302h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c13a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 13 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89c5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e 9c c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 83 b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 74 b9 5e}
0341h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c1390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 13 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89c5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e 9c c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 83 b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 74 b9 5e}
0380h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c1400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 14 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89c5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e 9c c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 82 b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 74 b9 5e}
03bch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c1370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 13 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89c5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e 9c c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 82 b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 73 b9 5e}
03f8h mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c1420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 14 6c c8 f7 7f 00 00}
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
; lookup_g[16u](n128,BinaryBitLogicKind~8u)[938] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 20 5b 9c c8 f7 7f 00 00 e8 32 81 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 72 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 14 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 20 5b 9c c8 f7 7f 00 00 e8 f3 80 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 72 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 15 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 20 5b 9c c8 f7 7f 00 00 e8 b4 80 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 71 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 15 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 20 5b 9c c8 f7 7f 00 00 e8 75 80 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 71 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 14 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 20 5b 9c c8 f7 7f 00 00 e8 36 80 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 71 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 14 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 20 5b 9c c8 f7 7f 00 00 e8 f7 7f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 71 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 14 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 20 5b 9c c8 f7 7f 00 00 e8 b8 7f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 70 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 14 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 20 5b 9c c8 f7 7f 00 00 e8 79 7f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa 70 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 14 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 20 5b 9c c8 f7 7f 00 00 e8 3a 7f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b 70 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 15 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 20 5b 9c c8 f7 7f 00 00 e8 fb 7e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 70 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 15 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 20 5b 9c c8 f7 7f 00 00 e8 bc 7e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed 6f b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 14 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 20 5b 9c c8 f7 7f 00 00 e8 7d 7e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae 6f b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 14 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 20 5b 9c c8 f7 7f 00 00 e8 3e 7e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f 6f b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 14 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 20 5b 9c c8 f7 7f 00 00 e8 ff 7d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 6f b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 15 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 20 5b 9c c8 f7 7f 00 00 e8 c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c89c5b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 5b 9c c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 81 b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 72 b9 5e}
004dh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c1460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 14 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89c5b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 5b 9c c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 80 b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 72 b9 5e}
008ch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c1550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 15 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89c5b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 5b 9c c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 80 b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 71 b9 5e}
00cbh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c1540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 15 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89c5b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 5b 9c c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 80 b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 71 b9 5e}
010ah mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c1470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 14 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89c5b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 5b 9c c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 80 b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 71 b9 5e}
0149h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c14e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 14 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89c5b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 5b 9c c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 7f b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 71 b9 5e}
0188h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c14d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 14 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89c5b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 5b 9c c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 7f b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 70 b9 5e}
01c7h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c14f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 14 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89c5b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 5b 9c c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 7f b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 70 b9 5e}
0206h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c14c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 14 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89c5b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 5b 9c c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 7f b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 70 b9 5e}
0245h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c1520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 15 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89c5b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 5b 9c c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 7e b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 70 b9 5e}
0284h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c1500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 15 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89c5b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 5b 9c c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 7e b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 6f b9 5e}
02c3h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c1490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 14 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89c5b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 5b 9c c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 7e b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 6f b9 5e}
0302h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c14b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 14 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89c5b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 5b 9c c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 7e b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 6f b9 5e}
0341h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c14a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 14 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89c5b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 5b 9c c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 7d b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 6f b9 5e}
0380h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c1510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 15 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89c5b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 5b 9c c8 f7 7f 00 00}
03a8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<short>> lookup<short>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_g[16i](n128,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 70 59 9c c8 f7 7f 00 00 e8 22 7c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 6d b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 15 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 70 59 9c c8 f7 7f 00 00 e8 e3 7b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 6d b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 16 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 70 59 9c c8 f7 7f 00 00 e8 a4 7b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 6c b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 16 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 70 59 9c c8 f7 7f 00 00 e8 65 7b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 6c b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 15 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 70 59 9c c8 f7 7f 00 00 e8 26 7b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 6c b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 15 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 70 59 9c c8 f7 7f 00 00 e8 e7 7a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 6c b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 15 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 70 59 9c c8 f7 7f 00 00 e8 a8 7a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 6b b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 16 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 70 59 9c c8 f7 7f 00 00 e8 69 7a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a 6b b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 15 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 70 59 9c c8 f7 7f 00 00 e8 2a 7a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b 6b b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 16 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 70 59 9c c8 f7 7f 00 00 e8 eb 79 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 6b b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 16 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 70 59 9c c8 f7 7f 00 00 e8 ac 79 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd 6a b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 15 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 70 59 9c c8 f7 7f 00 00 e8 6d 79 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e 6a b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 15 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 70 59 9c c8 f7 7f 00 00 e8 2e 79 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f 6a b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 15 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 70 59 9c c8 f7 7f 00 00 e8 ef 78 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 6a b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 16 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 70 59 9c c8 f7 7f 00 00 e8 b3 78 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 69 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 15 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 70 59 9c c8 f7 7f 00 00 e8 77 78 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 69 b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 40 16 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c89c5970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 59 9c c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 7c b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 6d b9 5e}
004dh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c1570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 15 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89c5970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 59 9c c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 7b b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 6d b9 5e}
008ch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c1660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 16 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89c5970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 59 9c c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 7b b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 6c b9 5e}
00cbh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c1650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 16 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89c5970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 59 9c c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 7b b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 6c b9 5e}
010ah mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c1580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 15 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89c5970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 59 9c c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 7b b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 6c b9 5e}
0149h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c15f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 15 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89c5970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 59 9c c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 7a b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 6c b9 5e}
0188h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c15e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 15 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89c5970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 59 9c c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 7a b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 6b b9 5e}
01c7h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c1600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 16 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89c5970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 59 9c c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 7a b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 6b b9 5e}
0206h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c15d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 15 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89c5970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 59 9c c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 7a b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 6b b9 5e}
0245h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c1630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 16 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89c5970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 59 9c c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 79 b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 6b b9 5e}
0284h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c1610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 16 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89c5970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 59 9c c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 79 b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 6a b9 5e}
02c3h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c15a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 15 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89c5970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 59 9c c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 79 b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 6a b9 5e}
0302h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c15c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 15 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89c5970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 59 9c c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 79 b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 6a b9 5e}
0341h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c15b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 15 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89c5970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 59 9c c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 78 b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 6a b9 5e}
0380h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c1620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 16 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89c5970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 59 9c c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 78 b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 69 b9 5e}
03bch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c1590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 15 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89c5970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 59 9c c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 78 b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 69 b9 5e}
03f8h mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c1640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 16 6c c8 f7 7f 00 00}
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
; lookup_g[32u](n128,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 c0 6c 9c c8 f7 7f 00 00 e8 12 77 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 68 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 16 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c0 6c 9c c8 f7 7f 00 00 e8 d3 76 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 68 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 20 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 c0 6c 9c c8 f7 7f 00 00 e8 94 76 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 67 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 20 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 c0 6c 9c c8 f7 7f 00 00 e8 55 76 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 86 67 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 16 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 c0 6c 9c c8 f7 7f 00 00 e8 16 76 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 47 67 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 17 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 c0 6c 9c c8 f7 7f 00 00 e8 d7 75 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 67 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 16 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 c0 6c 9c c8 f7 7f 00 00 e8 98 75 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 66 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 17 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 c0 6c 9c c8 f7 7f 00 00 e8 59 75 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8a 66 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 16 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 c0 6c 9c c8 f7 7f 00 00 e8 1a 75 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b 66 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 17 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 c0 6c 9c c8 f7 7f 00 00 e8 db 74 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c 66 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 17 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 c0 6c 9c c8 f7 7f 00 00 e8 9c 74 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd 65 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 16 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c0 6c 9c c8 f7 7f 00 00 e8 5d 74 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8e 65 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 16 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c0 6c 9c c8 f7 7f 00 00 e8 1e 74 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4f 65 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 16 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c0 6c 9c c8 f7 7f 00 00 e8 df 73 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 10 65 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 17 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c0 6c 9c c8 f7 7f 00 00 e8 a3 73 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 64 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 16 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c0 6c 9c c8 f7 7f 00 00 e8 67 73 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 64 b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 00 20 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c89c6cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 6c 9c c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 77 b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 68 b9 5e}
004dh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c1680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 16 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89c6cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 6c 9c c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 76 b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 68 b9 5e}
008ch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c2020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 20 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89c6cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 6c 9c c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 76 b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 67 b9 5e}
00cbh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c2010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 20 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89c6cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 6c 9c c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 76 b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 67 b9 5e}
010ah mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c1690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 16 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89c6cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 6c 9c c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 76 b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 67 b9 5e}
0149h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c1700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 17 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89c6cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 6c 9c c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 75 b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 67 b9 5e}
0188h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c16f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 16 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89c6cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 6c 9c c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 75 b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 66 b9 5e}
01c7h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c1710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 17 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89c6cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 6c 9c c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 75 b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 66 b9 5e}
0206h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c16e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 16 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89c6cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 6c 9c c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 75 b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 66 b9 5e}
0245h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c1740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 17 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89c6cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 6c 9c c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 74 b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 66 b9 5e}
0284h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c1720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 17 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89c6cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 6c 9c c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 74 b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 65 b9 5e}
02c3h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c16b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 16 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89c6cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 6c 9c c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 74 b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 65 b9 5e}
0302h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c16d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 16 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89c6cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 6c 9c c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 74 b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 65 b9 5e}
0341h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c16c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 16 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89c6cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 6c 9c c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 73 b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 65 b9 5e}
0380h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c1730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 17 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89c6cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 6c 9c c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 73 b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 64 b9 5e}
03bch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c16a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 16 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89c6cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 6c 9c c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 73 b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 64 b9 5e}
03f8h mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c2000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 20 6c c8 f7 7f 00 00}
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
; lookup_g[32i](n128,BinaryBitLogicKind~8u)[122] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 90 69 9c c8 f7 7f 00 00 e8 02 72 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 63 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 20 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 90 69 9c c8 f7 7f 00 00 e8 c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c89c6990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 69 9c c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 72 b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 63 b9 5e}
004dh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c2040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 20 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89c6990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 69 9c c8 f7 7f 00 00}
0078h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ulong>> lookup<ulong>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_g[64u](n128,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 e0 64 9c c8 f7 7f 00 00 e8 f2 6c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 5e b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 21 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 e0 64 9c c8 f7 7f 00 00 e8 b3 6c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 5d b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 22 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 e0 64 9c c8 f7 7f 00 00 e8 74 6c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 5d b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 22 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 e0 64 9c c8 f7 7f 00 00 e8 35 6c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 66 5d b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 21 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 e0 64 9c c8 f7 7f 00 00 e8 f6 6b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 27 5d b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 21 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 e0 64 9c c8 f7 7f 00 00 e8 b7 6b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 5c b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 21 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 e0 64 9c c8 f7 7f 00 00 e8 78 6b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 5c b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 21 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 e0 64 9c c8 f7 7f 00 00 e8 39 6b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6a 5c b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 21 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 e0 64 9c c8 f7 7f 00 00 e8 fa 6a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2b 5c b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 22 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 e0 64 9c c8 f7 7f 00 00 e8 bb 6a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec 5b b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 21 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 e0 64 9c c8 f7 7f 00 00 e8 7c 6a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad 5b b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 21 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e0 64 9c c8 f7 7f 00 00 e8 3d 6a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6e 5b b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 21 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e0 64 9c c8 f7 7f 00 00 e8 fe 69 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2f 5b b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 21 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e0 64 9c c8 f7 7f 00 00 e8 bf 69 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f0 5a b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 22 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e0 64 9c c8 f7 7f 00 00 e8 83 69 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 5a b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 21 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e0 64 9c c8 f7 7f 00 00 e8 47 69 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 5a b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 20 22 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c89c64e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 64 9c c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 6c b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 5e b9 5e}
004dh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c2150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 21 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89c64e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 64 9c c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 6c b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 5d b9 5e}
008ch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c2240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 22 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89c64e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 64 9c c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 6c b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 5d b9 5e}
00cbh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c2230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 22 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89c64e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 64 9c c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 6c b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 5d b9 5e}
010ah mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89c64e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 64 9c c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 6b b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 5d b9 5e}
0149h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c21d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 21 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89c64e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 64 9c c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 6b b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 5c b9 5e}
0188h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c21c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 21 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89c64e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 64 9c c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 6b b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 5c b9 5e}
01c7h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c21e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 21 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89c64e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 64 9c c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 6b b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 5c b9 5e}
0206h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c21b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 21 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89c64e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 64 9c c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 6a b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 5c b9 5e}
0245h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c2210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 22 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89c64e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 64 9c c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 6a b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 5b b9 5e}
0284h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c21f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 21 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89c64e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 64 9c c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 6a b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 5b b9 5e}
02c3h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c2180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 21 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89c64e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 64 9c c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 6a b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 5b b9 5e}
0302h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c21a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 21 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89c64e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 64 9c c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 69 b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 5b b9 5e}
0341h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c2190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 21 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89c64e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 64 9c c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 69 b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 5a b9 5e}
0380h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c2200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 22 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89c64e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 64 9c c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 69 b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 5a b9 5e}
03bch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c2170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 21 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89c64e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 64 9c c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 69 b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 5a b9 5e}
03f8h mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c2220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 22 6c c8 f7 7f 00 00}
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
; lookup_g[64i](n128,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 f0 6f 9c c8 f7 7f 00 00 e8 e2 67 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 59 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 22 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 f0 6f 9c c8 f7 7f 00 00 e8 a3 67 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 58 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 23 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 f0 6f 9c c8 f7 7f 00 00 e8 64 67 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 58 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 23 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 f0 6f 9c c8 f7 7f 00 00 e8 25 67 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 58 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 22 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 f0 6f 9c c8 f7 7f 00 00 e8 e6 66 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 58 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 22 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 f0 6f 9c c8 f7 7f 00 00 e8 a7 66 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 57 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 22 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 f0 6f 9c c8 f7 7f 00 00 e8 68 66 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 57 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 22 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 f0 6f 9c c8 f7 7f 00 00 e8 29 66 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a 57 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 22 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 f0 6f 9c c8 f7 7f 00 00 e8 ea 65 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b 57 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 23 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 f0 6f 9c c8 f7 7f 00 00 e8 ab 65 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dc 56 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 23 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 f0 6f 9c c8 f7 7f 00 00 e8 6c 65 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d 56 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 22 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f0 6f 9c c8 f7 7f 00 00 e8 2d 65 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5e 56 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 22 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f0 6f 9c c8 f7 7f 00 00 e8 ee 64 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1f 56 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 22 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f0 6f 9c c8 f7 7f 00 00 e8 af 64 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e0 55 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 23 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f0 6f 9c c8 f7 7f 00 00 e8 73 64 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 55 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 22 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f0 6f 9c c8 f7 7f 00 00 e8 37 64 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 55 b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 30 23 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c89c6ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6f 9c c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 67 b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 59 b9 5e}
004dh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c2260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 22 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89c6ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6f 9c c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 67 b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 58 b9 5e}
008ch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c2350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 23 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89c6ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6f 9c c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 67 b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 58 b9 5e}
00cbh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c2340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 23 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89c6ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6f 9c c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 67 b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 58 b9 5e}
010ah mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c2270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 22 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89c6ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6f 9c c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 66 b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 58 b9 5e}
0149h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c22e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 22 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89c6ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6f 9c c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 66 b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 57 b9 5e}
0188h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c22d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 22 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89c6ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6f 9c c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 66 b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 57 b9 5e}
01c7h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c22f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 22 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89c6ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6f 9c c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 66 b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 57 b9 5e}
0206h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c22c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 22 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89c6ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6f 9c c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 65 b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 57 b9 5e}
0245h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c2320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 23 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89c6ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6f 9c c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 65 b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 56 b9 5e}
0284h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c2300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 23 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89c6ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6f 9c c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 65 b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 56 b9 5e}
02c3h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c2290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 22 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89c6ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6f 9c c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 65 b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 56 b9 5e}
0302h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c22b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 22 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89c6ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6f 9c c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 64 b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 56 b9 5e}
0341h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c22a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 22 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89c6ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6f 9c c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 64 b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 55 b9 5e}
0380h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c2310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 23 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89c6ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6f 9c c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 64 b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 55 b9 5e}
03bch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c2280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 22 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89c6ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6f 9c c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 64 b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 55 b9 5e}
03f8h mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c2330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 23 6c c8 f7 7f 00 00}
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
; lookup_g[8u](n256,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 f0 8f 9c c8 f7 7f 00 00 e8 d2 62 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 54 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 2f 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 f0 8f 9c c8 f7 7f 00 00 e8 93 62 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 53 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 31 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 f0 8f 9c c8 f7 7f 00 00 e8 54 62 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 53 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 31 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 f0 8f 9c c8 f7 7f 00 00 e8 15 62 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 53 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 2f 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 f0 8f 9c c8 f7 7f 00 00 e8 d6 61 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 53 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 30 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 f0 8f 9c c8 f7 7f 00 00 e8 97 61 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 52 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 30 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 f0 8f 9c c8 f7 7f 00 00 e8 58 61 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 52 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 30 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 f0 8f 9c c8 f7 7f 00 00 e8 19 61 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 52 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 30 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 f0 8f 9c c8 f7 7f 00 00 e8 da 60 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 52 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 31 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 f0 8f 9c c8 f7 7f 00 00 e8 9b 60 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 51 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 30 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 f0 8f 9c c8 f7 7f 00 00 e8 5c 60 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 51 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 2f 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f0 8f 9c c8 f7 7f 00 00 e8 1d 60 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 51 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 30 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f0 8f 9c c8 f7 7f 00 00 e8 de 5f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 51 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 30 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f0 8f 9c c8 f7 7f 00 00 e8 9f 5f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 50 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 30 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f0 8f 9c c8 f7 7f 00 00 e8 63 5f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 50 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 2f 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f0 8f 9c c8 f7 7f 00 00 e8 27 5f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 50 b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 30 31 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c89c8ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8f 9c c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 62 b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 54 b9 5e}
004dh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c2f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 2f 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89c8ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8f 9c c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 62 b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 53 b9 5e}
008ch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c3170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 31 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89c8ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8f 9c c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 62 b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 53 b9 5e}
00cbh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c3150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 31 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89c8ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8f 9c c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 62 b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 53 b9 5e}
010ah mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c2fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2f 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89c8ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8f 9c c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 61 b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 53 b9 5e}
0149h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c3090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89c8ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8f 9c c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 61 b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 52 b9 5e}
0188h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c3070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 30 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89c8ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8f 9c c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 61 b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 52 b9 5e}
01c7h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c30b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 30 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89c8ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8f 9c c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 61 b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 52 b9 5e}
0206h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c3050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 30 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89c8ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8f 9c c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 60 b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 52 b9 5e}
0245h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c3110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 31 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89c8ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8f 9c c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 60 b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 51 b9 5e}
0284h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c30d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 30 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89c8ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8f 9c c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 60 b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 51 b9 5e}
02c3h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c2ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 2f 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89c8ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8f 9c c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 60 b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 51 b9 5e}
0302h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c3030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 30 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89c8ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8f 9c c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 5f b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 51 b9 5e}
0341h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c3010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 30 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89c8ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8f 9c c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 5f b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 50 b9 5e}
0380h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c30f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 30 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89c8ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8f 9c c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 5f b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 50 b9 5e}
03bch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c2fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 2f 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89c8ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8f 9c c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 5f b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 50 b9 5e}
03f8h mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c3130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 31 6c c8 f7 7f 00 00}
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
; lookup_g[8i](n256,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 c0 8c 9c c8 f7 7f 00 00 e8 c2 5d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 4e b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 32 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c0 8c 9c c8 f7 7f 00 00 e8 83 5d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 4e b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 33 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 c0 8c 9c c8 f7 7f 00 00 e8 44 5d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 4e b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 33 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 c0 8c 9c c8 f7 7f 00 00 e8 05 5d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 4e b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 32 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 c0 8c 9c c8 f7 7f 00 00 e8 c6 5c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 4d b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 32 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 c0 8c 9c c8 f7 7f 00 00 e8 87 5c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 4d b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 32 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 c0 8c 9c c8 f7 7f 00 00 e8 48 5c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 4d b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 33 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 c0 8c 9c c8 f7 7f 00 00 e8 09 5c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3a 4d b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 32 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 c0 8c 9c c8 f7 7f 00 00 e8 ca 5b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb 4c b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 33 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 c0 8c 9c c8 f7 7f 00 00 e8 8b 5b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc 4c b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 33 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 c0 8c 9c c8 f7 7f 00 00 e8 4c 5b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7d 4c b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 32 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c0 8c 9c c8 f7 7f 00 00 e8 0d 5b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3e 4c b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 32 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c0 8c 9c c8 f7 7f 00 00 e8 ce 5a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ff 4b b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 32 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c0 8c 9c c8 f7 7f 00 00 e8 8f 5a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c0 4b b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 33 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c0 8c 9c c8 f7 7f 00 00 e8 53 5a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 84 4b b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 32 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c0 8c 9c c8 f7 7f 00 00 e8 17 5a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 4b b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 40 33 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c89c8cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8c 9c c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 5d b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 4e b9 5e}
004dh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c3270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 32 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89c8cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8c 9c c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 5d b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 4e b9 5e}
008ch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c3360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 33 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89c8cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8c 9c c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 5d b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 4e b9 5e}
00cbh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c3350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 33 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89c8cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8c 9c c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 5d b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 4e b9 5e}
010ah mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c3280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 32 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89c8cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8c 9c c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 5c b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 4d b9 5e}
0149h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c32f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 32 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89c8cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8c 9c c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 5c b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 4d b9 5e}
0188h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c32e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 32 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89c8cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8c 9c c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 5c b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 4d b9 5e}
01c7h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89c8cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8c 9c c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 5c b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 4d b9 5e}
0206h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c32d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 32 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89c8cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8c 9c c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 5b b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 4c b9 5e}
0245h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c3330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 33 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89c8cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8c 9c c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 5b b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 4c b9 5e}
0284h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c3310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 33 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89c8cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8c 9c c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 5b b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 4c b9 5e}
02c3h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c32a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 32 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89c8cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8c 9c c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 5b b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 4c b9 5e}
0302h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c32c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 32 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89c8cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8c 9c c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 5a b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 4b b9 5e}
0341h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c32b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 32 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89c8cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8c 9c c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 5a b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 4b b9 5e}
0380h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c3320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 33 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89c8cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8c 9c c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 5a b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 4b b9 5e}
03bch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c3290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 32 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89c8cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 8c 9c c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 5a b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 4b b9 5e}
03f8h mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c3340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 33 6c c8 f7 7f 00 00}
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
; lookup_g[16u](n256,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 68 ee 9b c8 f7 7f 00 00 e8 b2 58 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 49 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 33 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 68 ee 9b c8 f7 7f 00 00 e8 73 58 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 49 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 3a 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 68 ee 9b c8 f7 7f 00 00 e8 34 58 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 49 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 3a 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 68 ee 9b c8 f7 7f 00 00 e8 f5 57 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 49 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 39 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 68 ee 9b c8 f7 7f 00 00 e8 b6 57 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 48 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 39 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 68 ee 9b c8 f7 7f 00 00 e8 77 57 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 48 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 39 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 68 ee 9b c8 f7 7f 00 00 e8 38 57 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 48 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 39 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 68 ee 9b c8 f7 7f 00 00 e8 f9 56 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2a 48 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 39 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 68 ee 9b c8 f7 7f 00 00 e8 ba 56 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb 47 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 3a 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 68 ee 9b c8 f7 7f 00 00 e8 7b 56 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac 47 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 3a 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 68 ee 9b c8 f7 7f 00 00 e8 3c 56 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d 47 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 39 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 68 ee 9b c8 f7 7f 00 00 e8 fd 55 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2e 47 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 39 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 68 ee 9b c8 f7 7f 00 00 e8 be 55 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ef 46 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 39 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 68 ee 9b c8 f7 7f 00 00 e8 7f 55 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b0 46 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 3a 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 68 ee 9b c8 f7 7f 00 00 e8 43 55 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 46 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 39 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 68 ee 9b c8 f7 7f 00 00 e8 07 55 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 46 b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 38 3a 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c89bee68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ee 9b c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 58 b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 49 b9 5e}
004dh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c3380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 33 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89bee68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ee 9b c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 58 b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 49 b9 5e}
008ch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c3a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 3a 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89bee68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ee 9b c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 58 b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 49 b9 5e}
00cbh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c3a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 3a 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89bee68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ee 9b c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 57 b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 49 b9 5e}
010ah mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c3978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 39 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89bee68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ee 9b c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 57 b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 48 b9 5e}
0149h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c39e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 39 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89bee68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ee 9b c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 57 b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 48 b9 5e}
0188h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c39d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 39 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89bee68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ee 9b c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 57 b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 48 b9 5e}
01c7h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c39f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 39 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89bee68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ee 9b c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 56 b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 48 b9 5e}
0206h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c39c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 39 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89bee68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ee 9b c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 56 b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 47 b9 5e}
0245h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c3a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3a 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89bee68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ee 9b c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 56 b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 47 b9 5e}
0284h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c3a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 3a 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89bee68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ee 9b c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 56 b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 47 b9 5e}
02c3h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c3998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 39 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89bee68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ee 9b c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 55 b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 47 b9 5e}
0302h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c39b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 39 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89bee68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ee 9b c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 55 b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 46 b9 5e}
0341h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c39a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 39 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89bee68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ee 9b c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 55 b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 46 b9 5e}
0380h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c3a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 3a 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89bee68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ee 9b c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 55 b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 46 b9 5e}
03bch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c3988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 39 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89bee68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ee 9b c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 55 b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 46 b9 5e}
03f8h mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c3a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 3a 6c c8 f7 7f 00 00}
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
; lookup_g[16i](n256,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 d0 5c 9c c8 f7 7f 00 00 e8 a2 53 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 44 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 3a 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d0 5c 9c c8 f7 7f 00 00 e8 63 53 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 44 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 3b 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d0 5c 9c c8 f7 7f 00 00 e8 24 53 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 44 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 3b 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d0 5c 9c c8 f7 7f 00 00 e8 e5 52 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 16 44 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 3a 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d0 5c 9c c8 f7 7f 00 00 e8 a6 52 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d7 43 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 3a 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d0 5c 9c c8 f7 7f 00 00 e8 67 52 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 43 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 3a 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d0 5c 9c c8 f7 7f 00 00 e8 28 52 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 43 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 3b 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d0 5c 9c c8 f7 7f 00 00 e8 e9 51 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1a 43 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 3a 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d0 5c 9c c8 f7 7f 00 00 e8 aa 51 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db 42 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 3b 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d0 5c 9c c8 f7 7f 00 00 e8 6b 51 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c 42 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 3b 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d0 5c 9c c8 f7 7f 00 00 e8 2c 51 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d 42 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 3a 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d0 5c 9c c8 f7 7f 00 00 e8 ed 50 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1e 42 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 3a 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d0 5c 9c c8 f7 7f 00 00 e8 ae 50 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 df 41 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 3a 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d0 5c 9c c8 f7 7f 00 00 e8 6f 50 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a0 41 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 3b 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d0 5c 9c c8 f7 7f 00 00 e8 33 50 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 41 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 3a 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d0 5c 9c c8 f7 7f 00 00 e8 f7 4f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 41 b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 48 3b 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c89c5cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5c 9c c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 53 b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 44 b9 5e}
004dh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c3a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 3a 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89c5cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5c 9c c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 53 b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 44 b9 5e}
008ch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c3b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 3b 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89c5cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5c 9c c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 53 b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 44 b9 5e}
00cbh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c3b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 3b 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89c5cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5c 9c c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 52 b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 44 b9 5e}
010ah mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c3a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 3a 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89c5cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5c 9c c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 52 b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 43 b9 5e}
0149h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c3af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3a 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89c5cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5c 9c c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 52 b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 43 b9 5e}
0188h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c3ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 3a 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89c5cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5c 9c c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 52 b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 43 b9 5e}
01c7h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c3b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 3b 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89c5cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5c 9c c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 51 b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 43 b9 5e}
0206h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c3ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 3a 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89c5cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5c 9c c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 51 b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 42 b9 5e}
0245h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c3b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 3b 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89c5cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5c 9c c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 51 b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 42 b9 5e}
0284h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c3b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 3b 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89c5cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5c 9c c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 51 b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 42 b9 5e}
02c3h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c3aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 3a 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89c5cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5c 9c c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 50 b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 42 b9 5e}
0302h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c3ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 3a 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89c5cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5c 9c c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 50 b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 41 b9 5e}
0341h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c3ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 3a 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89c5cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5c 9c c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 50 b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 41 b9 5e}
0380h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c3b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3b 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89c5cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5c 9c c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 50 b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 41 b9 5e}
03bch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c3a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 3a 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89c5cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5c 9c c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 4f b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 41 b9 5e}
03f8h mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c3b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 3b 6c c8 f7 7f 00 00}
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
; lookup_g[32u](n256,BinaryBitLogicKind~8u)[74] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 50 99 9c c8 f7 7f 00 00 e8 92 4e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c89c9950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 99 9c c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 4e b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<int>> lookup<int>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_g[32i](n256,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 20 96 9c c8 f7 7f 00 00 e8 82 49 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 3a b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 3c 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 20 96 9c c8 f7 7f 00 00 e8 43 49 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 3a b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 46 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 20 96 9c c8 f7 7f 00 00 e8 04 49 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 3a b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 46 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 20 96 9c c8 f7 7f 00 00 e8 c5 48 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 39 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 3c 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 20 96 9c c8 f7 7f 00 00 e8 86 48 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 39 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 3d 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 20 96 9c c8 f7 7f 00 00 e8 47 48 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 39 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 3d 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 20 96 9c c8 f7 7f 00 00 e8 08 48 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 39 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 3d 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 20 96 9c c8 f7 7f 00 00 e8 c9 47 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa 38 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 3c 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 20 96 9c c8 f7 7f 00 00 e8 8a 47 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb 38 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 3d 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 20 96 9c c8 f7 7f 00 00 e8 4b 47 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c 38 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 3d 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 20 96 9c c8 f7 7f 00 00 e8 0c 47 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d 38 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 3c 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 20 96 9c c8 f7 7f 00 00 e8 cd 46 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe 37 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 3c 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 20 96 9c c8 f7 7f 00 00 e8 8e 46 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf 37 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 3c 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 20 96 9c c8 f7 7f 00 00 e8 4f 46 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 80 37 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 3d 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 20 96 9c c8 f7 7f 00 00 e8 13 46 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 37 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 3c 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 20 96 9c c8 f7 7f 00 00 e8 d7 45 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 37 b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 68 3d 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c89c9620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 9c c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 49 b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 3a b9 5e}
004dh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c3c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 3c 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89c9620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 9c c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 49 b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 3a b9 5e}
008ch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c4658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 46 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89c9620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 9c c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 49 b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 3a b9 5e}
00cbh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c4648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 46 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89c9620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 9c c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 48 b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 39 b9 5e}
010ah mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c3ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 3c 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89c9620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 9c c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 48 b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 39 b9 5e}
0149h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c3d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 3d 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89c9620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 9c c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 48 b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 39 b9 5e}
0188h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c3d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 3d 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89c9620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 9c c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 48 b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 39 b9 5e}
01c7h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c3d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3d 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89c9620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 9c c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 47 b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 38 b9 5e}
0206h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c3cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3c 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89c9620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 9c c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 47 b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 38 b9 5e}
0245h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c3d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 3d 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89c9620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 9c c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 47 b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 38 b9 5e}
0284h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c3d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 3d 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89c9620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 9c c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 47 b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 38 b9 5e}
02c3h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c3cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 3c 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89c9620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 9c c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 46 b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 37 b9 5e}
0302h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c3ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 3c 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89c9620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 9c c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 46 b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 37 b9 5e}
0341h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c3cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 3c 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89c9620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 9c c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 46 b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 37 b9 5e}
0380h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c3d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 3d 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89c9620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 9c c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 46 b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 37 b9 5e}
03bch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c3cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 3c 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89c9620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 9c c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 45 b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 37 b9 5e}
03f8h mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c3d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 3d 6c c8 f7 7f 00 00}
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
; lookup_g[64u](n256,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 b0 9f 9c c8 f7 7f 00 00 e8 72 44 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 35 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 46 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 b0 9f 9c c8 f7 7f 00 00 e8 33 44 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 35 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 47 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 b0 9f 9c c8 f7 7f 00 00 e8 f4 43 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 35 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 47 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 b0 9f 9c c8 f7 7f 00 00 e8 b5 43 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 34 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 46 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 b0 9f 9c c8 f7 7f 00 00 e8 76 43 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 34 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 46 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 b0 9f 9c c8 f7 7f 00 00 e8 37 43 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 34 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 46 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 b0 9f 9c c8 f7 7f 00 00 e8 f8 42 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 34 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 47 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 b0 9f 9c c8 f7 7f 00 00 e8 b9 42 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea 33 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 46 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 b0 9f 9c c8 f7 7f 00 00 e8 7a 42 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab 33 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 47 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 b0 9f 9c c8 f7 7f 00 00 e8 3b 42 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c 33 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 47 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 b0 9f 9c c8 f7 7f 00 00 e8 fc 41 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d 33 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 46 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b0 9f 9c c8 f7 7f 00 00 e8 bd 41 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee 32 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 46 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b0 9f 9c c8 f7 7f 00 00 e8 7e 41 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 af 32 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 46 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b0 9f 9c c8 f7 7f 00 00 e8 3f 41 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 70 32 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 47 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b0 9f 9c c8 f7 7f 00 00 e8 03 41 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 32 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 46 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b0 9f 9c c8 f7 7f 00 00 e8 c7 40 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 31 b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 48 47 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c89c9fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 9f 9c c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 44 b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 35 b9 5e}
004dh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c4678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 46 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89c9fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 9f 9c c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 44 b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 35 b9 5e}
008ch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c4768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 47 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89c9fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 9f 9c c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 43 b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 35 b9 5e}
00cbh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c4758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 47 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89c9fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 9f 9c c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 43 b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 34 b9 5e}
010ah mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c4688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 46 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89c9fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 9f 9c c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 43 b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 34 b9 5e}
0149h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c46f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 46 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89c9fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 9f 9c c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 43 b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 34 b9 5e}
0188h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c46e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 46 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89c9fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 9f 9c c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 42 b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 34 b9 5e}
01c7h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c4708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 47 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89c9fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 9f 9c c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 42 b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 33 b9 5e}
0206h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c46d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 46 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89c9fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 9f 9c c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 42 b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 33 b9 5e}
0245h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c4738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 47 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89c9fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 9f 9c c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 42 b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 33 b9 5e}
0284h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c4718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 47 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89c9fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 9f 9c c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 41 b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 33 b9 5e}
02c3h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c46a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 46 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89c9fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 9f 9c c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 41 b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 32 b9 5e}
0302h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c46c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 46 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89c9fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 9f 9c c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 41 b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 32 b9 5e}
0341h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c46b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 46 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89c9fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 9f 9c c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 41 b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 32 b9 5e}
0380h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c4728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 47 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89c9fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 9f 9c c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 41 b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 32 b9 5e}
03bch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c4698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 46 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89c9fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 9f 9c c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 40 b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 31 b9 5e}
03f8h mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c4748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 47 6c c8 f7 7f 00 00}
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
; lookup_g[64i](n256,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 80 9c 9c c8 f7 7f 00 00 e8 62 3f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 30 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 47 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 80 9c 9c c8 f7 7f 00 00 e8 23 3f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 30 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 48 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 80 9c 9c c8 f7 7f 00 00 e8 e4 3e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 30 b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 48 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 80 9c 9c c8 f7 7f 00 00 e8 a5 3e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 2f b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 47 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 80 9c 9c c8 f7 7f 00 00 e8 66 3e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 2f b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 48 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 80 9c 9c c8 f7 7f 00 00 e8 27 3e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 2f b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 47 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 80 9c 9c c8 f7 7f 00 00 e8 e8 3d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 2f b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 48 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 80 9c 9c c8 f7 7f 00 00 e8 a9 3d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 da 2e b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 47 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 80 9c 9c c8 f7 7f 00 00 e8 6a 3d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b 2e b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 48 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 80 9c 9c c8 f7 7f 00 00 e8 2b 3d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c 2e b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 48 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 80 9c 9c c8 f7 7f 00 00 e8 ec 3c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d 2e b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 47 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 80 9c 9c c8 f7 7f 00 00 e8 ad 3c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 de 2d b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 47 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 80 9c 9c c8 f7 7f 00 00 e8 6e 3c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f 2d b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 47 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 80 9c 9c c8 f7 7f 00 00 e8 2f 3c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 2d b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 48 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 80 9c 9c c8 f7 7f 00 00 e8 f3 3b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 2d b9 5e 48 b9 c0 e3 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 47 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 80 9c 9c c8 f7 7f 00 00 e8 b7 3b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 2c b9 5e 48 b8 c0 e3 61 c7 f7 7f 00 00 48 89 46 18 48 b8 58 48 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
002fh mov rcx,7ff7c89c9c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9c 9c c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 3f b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 30 b9 5e}
004dh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86c4788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 47 6c c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89c9c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9c 9c c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 3f b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 30 b9 5e}
008ch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86c4878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 48 6c c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89c9c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9c 9c c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 3e b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 30 b9 5e}
00cbh mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86c4868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 48 6c c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89c9c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9c 9c c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 3e b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 2f b9 5e}
010ah mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86c4798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 47 6c c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89c9c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9c 9c c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 3e b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 2f b9 5e}
0149h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86c4808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 48 6c c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89c9c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9c 9c c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 3e b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 2f b9 5e}
0188h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86c47f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 47 6c c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89c9c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9c 9c c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 3d b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 2f b9 5e}
01c7h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86c4818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 48 6c c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89c9c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9c 9c c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 3d b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 2e b9 5e}
0206h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86c47e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 47 6c c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89c9c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9c 9c c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 3d b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 2e b9 5e}
0245h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86c4848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 48 6c c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89c9c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9c 9c c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 3d b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 2e b9 5e}
0284h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86c4828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 48 6c c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89c9c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9c 9c c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 3c b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 2e b9 5e}
02c3h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86c47b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 47 6c c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89c9c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9c 9c c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 3c b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 2d b9 5e}
0302h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86c47d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 47 6c c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89c9c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9c 9c c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 3c b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 2d b9 5e}
0341h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86c47c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 47 6c c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89c9c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9c 9c c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 3c b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 2d b9 5e}
0380h mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86c4838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 48 6c c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89c9c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9c 9c c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 3b b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 2d b9 5e}
03bch mov rcx,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 61 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86c47a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 47 6c c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89c9c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9c 9c c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 3b b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 2c b9 5e}
03f8h mov rax,7ff7c761e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 61 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86c4858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 48 6c c8 f7 7f 00 00}
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
; lookup_g[8u](n256,TernaryBitLogicKind~8u)[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 50 36 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 27 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 34 6d c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 11 36 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 27 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 34 6d c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 d2 35 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 27 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 34 6d c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 93 35 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 26 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 34 6d c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 54 35 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 26 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 34 6d c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 15 35 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 26 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 34 6d c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 d6 34 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 26 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 34 6d c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 97 34 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 25 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 33 6d c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 58 34 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 25 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 33 6d c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 19 34 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 25 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 33 6d c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 da 33 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 25 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 33 6d c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 9b 33 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 24 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 33 6d c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 5c 33 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 24 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 33 6d c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 1d 33 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 24 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 33 6d c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 de 32 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 24 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 33 6d c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 9f 32 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 23 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 32 6d c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 60 32 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 23 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 32 6d c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 21 32 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 23 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 32 6d c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 e2 31 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 23 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 32 6d c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 a3 31 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 22 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 32 6d c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 64 31 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 22 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 32 6d c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 25 31 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 22 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 32 6d c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 e6 30 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 22 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 e1 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 a7 30 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 21 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 e0 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 68 30 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 21 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 e0 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 2c 30 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d 21 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 e0 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 88 c5 c1 c8 f7 7f 00 00 e8 f0 2f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 21 b9 5e 48 b8 a0 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 88 e0 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 36 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 27 b9 5e}
004fh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86d34c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 34 6d c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 36 b9 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 27 b9 5e}
008eh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86d34a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 34 6d c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 35 b9 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 27 b9 5e}
00cdh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86d3488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 34 6d c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 35 b9 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 26 b9 5e}
010ch mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c86d3468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 34 6d c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 35 b9 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 26 b9 5e}
014bh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c86d3448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 34 6d c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 35 b9 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 26 b9 5e}
018ah mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c86d3428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 34 6d c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 34 b9 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 26 b9 5e}
01c9h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c86d3408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 34 6d c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 34 b9 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 25 b9 5e}
0208h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c86d33e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 33 6d c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 34 b9 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 25 b9 5e}
0247h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c86d33c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 33 6d c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 34 b9 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 25 b9 5e}
0286h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c86d33a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 33 6d c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 33 b9 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 25 b9 5e}
02c5h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c86d3388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 33 6d c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 33 b9 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 24 b9 5e}
0304h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c86d3368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 33 6d c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 33 b9 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 24 b9 5e}
0343h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c86d3348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 33 6d c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 33 b9 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 24 b9 5e}
0382h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c86d3328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 33 6d c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 32 b9 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 24 b9 5e}
03c1h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c86d3308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 33 6d c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 32 b9 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 23 b9 5e}
0400h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c86d32e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 32 6d c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 32 b9 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 23 b9 5e}
043fh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c86d32c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 32 6d c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 32 b9 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 23 b9 5e}
047eh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c86d32a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 32 6d c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 31 b9 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 23 b9 5e}
04bdh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c86d3288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 32 6d c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 31 b9 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 22 b9 5e}
04fch mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c86d3268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 32 6d c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 31 b9 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 22 b9 5e}
053bh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c86d3248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 32 6d c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 31 b9 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 22 b9 5e}
057ah mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c86d3228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 32 6d c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 30 b9 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 22 b9 5e}
05b9h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c86ce108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e1 6c c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 30 b9 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 21 b9 5e}
05f8h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c86ce0e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 e0 6c c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 30 b9 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 21 b9 5e}
0637h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c86ce0c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 e0 6c c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 30 b9 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 21 b9 5e}
0673h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c86ce0a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 e0 6c c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8c1c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 c1 c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 2f b9 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 21 b9 5e}
06afh mov rax,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 ec 61 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c86ce088h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 e0 6c c8 f7 7f 00 00}
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
; lookup_g[8i](n256,TernaryBitLogicKind~8u)[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 60 2a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 1b b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 3e 6d c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 21 2a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 1b b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 3e 6d c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 e2 29 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 1b b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 3e 6d c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 a3 29 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 1a b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 3e 6d c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 64 29 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 1a b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 3e 6d c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 25 29 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 1a b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 3e 6d c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 e6 28 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 1a b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 3e 6d c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 a7 28 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 19 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 3e 6d c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 68 28 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 19 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 36 6d c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 29 28 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a 19 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 35 6d c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 ea 27 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b 19 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 35 6d c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 ab 27 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dc 18 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 35 6d c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 6c 27 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d 18 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 35 6d c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 2d 27 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5e 18 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 35 6d c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 ee 26 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1f 18 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 35 6d c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 af 26 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e0 17 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 35 6d c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 70 26 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 17 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 35 6d c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 31 26 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 17 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 35 6d c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 f2 25 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 17 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 35 6d c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 b3 25 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 16 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 35 6d c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 74 25 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 16 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 35 6d c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 35 25 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 66 16 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 35 6d c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 f6 24 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 27 16 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 35 6d c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 b7 24 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 15 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 35 6d c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 78 24 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 15 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 35 6d c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 3c 24 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d 15 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 34 6d c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a8 c9 c1 c8 f7 7f 00 00 e8 00 24 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 15 b9 5e 48 b8 a0 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 e8 34 6d c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 2a b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 1b b9 5e}
004fh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86d3e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 3e 6d c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 2a b9 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 1b b9 5e}
008eh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86d3e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 3e 6d c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 29 b9 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 1b b9 5e}
00cdh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86d3e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 3e 6d c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 29 b9 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 1a b9 5e}
010ch mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c86d3e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 3e 6d c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 29 b9 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 1a b9 5e}
014bh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c86d3e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 3e 6d c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 29 b9 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 1a b9 5e}
018ah mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c86d3e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3e 6d c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 28 b9 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 1a b9 5e}
01c9h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c86d3e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 3e 6d c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 28 b9 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 19 b9 5e}
0208h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c86d3e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 3e 6d c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 28 b9 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 19 b9 5e}
0247h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c86d3608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 36 6d c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 28 b9 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 19 b9 5e}
0286h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c86d35f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 35 6d c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 27 b9 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 19 b9 5e}
02c5h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c86d35e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 35 6d c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 27 b9 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 18 b9 5e}
0304h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c86d35d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 35 6d c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 27 b9 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 18 b9 5e}
0343h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c86d35c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 35 6d c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 27 b9 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 18 b9 5e}
0382h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c86d35b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 35 6d c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 26 b9 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 18 b9 5e}
03c1h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c86d35a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 35 6d c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 26 b9 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 17 b9 5e}
0400h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c86d3598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 35 6d c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 26 b9 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 17 b9 5e}
043fh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c86d3588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 35 6d c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 26 b9 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 17 b9 5e}
047eh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c86d3578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 35 6d c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 25 b9 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 17 b9 5e}
04bdh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c86d3568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 35 6d c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 25 b9 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 16 b9 5e}
04fch mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c86d3558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 35 6d c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 25 b9 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 16 b9 5e}
053bh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c86d3548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 35 6d c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 25 b9 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 16 b9 5e}
057ah mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c86d3538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 35 6d c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 24 b9 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 16 b9 5e}
05b9h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c86d3528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 35 6d c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 24 b9 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 15 b9 5e}
05f8h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c86d3518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 35 6d c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 24 b9 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 15 b9 5e}
0637h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c86d3508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 35 6d c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 24 b9 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 15 b9 5e}
0673h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c86d34f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 34 6d c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8c1c9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c9 c1 c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 24 b9 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 15 b9 5e}
06afh mov rax,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 ec 61 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c86d34e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 34 6d c8 f7 7f 00 00}
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
; lookup_g[16u](n256,TernaryBitLogicKind~8u)[1258] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 18 cc c1 c8 f7 7f 00 00 e8 70 22 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 13 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 40 6d c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 18 cc c1 c8 f7 7f 00 00 e8 31 22 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 13 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 40 6d c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 18 cc c1 c8 f7 7f 00 00 e8 f2 21 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 13 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 40 6d c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 18 cc c1 c8 f7 7f 00 00 e8 b3 21 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 12 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 3f 6d c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 18 cc c1 c8 f7 7f 00 00 e8 74 21 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 12 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 3f 6d c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 18 cc c1 c8 f7 7f 00 00 e8 35 21 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 66 12 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 3f 6d c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 18 cc c1 c8 f7 7f 00 00 e8 f6 20 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 27 12 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 3f 6d c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 18 cc c1 c8 f7 7f 00 00 e8 b7 20 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 11 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 3f 6d c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 18 cc c1 c8 f7 7f 00 00 e8 78 20 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 11 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 3f 6d c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 18 cc c1 c8 f7 7f 00 00 e8 39 20 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6a 11 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 3f 6d c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 18 cc c1 c8 f7 7f 00 00 e8 fa 1f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2b 11 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 3f 6d c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 18 cc c1 c8 f7 7f 00 00 e8 bb 1f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec 10 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 3f 6d c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 18 cc c1 c8 f7 7f 00 00 e8 7c 1f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad 10 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 3f 6d c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 18 cc c1 c8 f7 7f 00 00 e8 3d 1f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6e 10 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 3f 6d c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 18 cc c1 c8 f7 7f 00 00 e8 fe 1e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2f 10 b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 3f 6d c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 18 cc c1 c8 f7 7f 00 00 e8 bf 1e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f0 0f b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 3f 6d c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 18 cc c1 c8 f7 7f 00 00 e8 80 1e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 0f b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 3f 6d c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 18 cc c1 c8 f7 7f 00 00 e8 41 1e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 0f b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 3f 6d c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 18 cc c1 c8 f7 7f 00 00 e8 02 1e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 0f b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 3f 6d c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 18 cc c1 c8 f7 7f 00 00 e8 c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c8c1cc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cc c1 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 22 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 13 b9 5e}
004fh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86d4028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 40 6d c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c1cc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cc c1 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 22 b9 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 13 b9 5e}
008eh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86d4018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 40 6d c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c1cc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cc c1 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 21 b9 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 13 b9 5e}
00cdh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86d4008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 40 6d c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8c1cc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cc c1 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 21 b9 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 12 b9 5e}
010ch mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c86d3ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3f 6d c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8c1cc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cc c1 c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 21 b9 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 12 b9 5e}
014bh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c86d3fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 3f 6d c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8c1cc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cc c1 c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 21 b9 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 12 b9 5e}
018ah mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c86d3fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 3f 6d c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8c1cc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cc c1 c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 20 b9 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 12 b9 5e}
01c9h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c86d3fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 3f 6d c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8c1cc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cc c1 c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 20 b9 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 11 b9 5e}
0208h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c86d3fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 3f 6d c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8c1cc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cc c1 c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 20 b9 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 11 b9 5e}
0247h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c86d3fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 3f 6d c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8c1cc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cc c1 c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 20 b9 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 11 b9 5e}
0286h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c86d3f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 3f 6d c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8c1cc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cc c1 c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 1f b9 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 11 b9 5e}
02c5h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c86d3f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 3f 6d c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8c1cc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cc c1 c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 1f b9 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 10 b9 5e}
0304h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c86d3f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 3f 6d c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8c1cc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cc c1 c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 1f b9 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 10 b9 5e}
0343h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c86d3f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 3f 6d c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8c1cc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cc c1 c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 1f b9 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 10 b9 5e}
0382h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c86d3f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 3f 6d c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8c1cc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cc c1 c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 1e b9 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 10 b9 5e}
03c1h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c86d3f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 3f 6d c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8c1cc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cc c1 c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 1e b9 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 0f b9 5e}
0400h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c86d3f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 3f 6d c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8c1cc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cc c1 c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 1e b9 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 0f b9 5e}
043fh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c86d3f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3f 6d c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8c1cc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cc c1 c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 1e b9 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 0f b9 5e}
047eh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c86d3f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 3f 6d c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8c1cc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cc c1 c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 1e b9 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 0f b9 5e}
04bdh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c86d3f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 3f 6d c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8c1cc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cc c1 c8 f7 7f 00 00}
04e8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<short>> lookup<short>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_g[16i](n256,TernaryBitLogicKind~8u)[250] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 88 ce c1 c8 f7 7f 00 00 e8 80 1a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 0b b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 41 6d c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 88 ce c1 c8 f7 7f 00 00 e8 41 1a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 0b b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 41 6d c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 88 ce c1 c8 f7 7f 00 00 e8 02 1a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 0b b9 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 41 6d c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 88 ce c1 c8 f7 7f 00 00 e8 c3}
; TermCode = CTC_RET_SBB
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
0031h mov rcx,7ff7c8c1ce88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ce c1 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 1a b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 0b b9 5e}
004fh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86d41d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 41 6d c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c1ce88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ce c1 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 1a b9 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 0b b9 5e}
008eh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86d41c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 41 6d c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c1ce88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ce c1 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 1a b9 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 0b b9 5e}
00cdh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86d41b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 41 6d c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8c1ce88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ce c1 c8 f7 7f 00 00}
00f8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<uint>> lookup<uint>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_g[32u](n256,TernaryBitLogicKind~8u)[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 90 0e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 ff b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 5b 6d c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 51 0e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 ff b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 5b 6d c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 12 0e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 ff b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 5b 6d c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 d3 0d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 ff b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 5b 6d c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 94 0d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 fe b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 5b 6d c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 55 0d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 86 fe b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 5b 6d c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 16 0d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 47 fe b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 d7 0c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 fe b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 98 0c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 fd b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 59 0c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8a fd b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 1a 0c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b fd b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 db 0b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c fd b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 9c 0b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd fc b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 5d 0b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8e fc b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 1e 0b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4f fc b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 df 0a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 10 fc b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 a0 0a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 fb b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 61 0a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 fb b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 22 0a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 fb b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 e3 09 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 fb b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 a4 09 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 fa b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 65 09 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 fa b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 5a 6d c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 26 09 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 fa b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 59 6d c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 e7 08 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 fa b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 59 6d c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 a8 08 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 f9 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 59 6d c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 6c 08 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d f9 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 41 6d c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f8 d0 c1 c8 f7 7f 00 00 e8 30 08 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 f9 b8 5e 48 b8 a0 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 e8 41 6d c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 0e b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 ff b8 5e}
004fh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86d5b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 5b 6d c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 0e b9 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 ff b8 5e}
008eh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86d5b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5b 6d c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 0e b9 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 ff b8 5e}
00cdh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86d5b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 5b 6d c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 0d b9 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 ff b8 5e}
010ch mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c86d5b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 5b 6d c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 0d b9 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 fe b8 5e}
014bh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c86d5b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5b 6d c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 0d b9 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 fe b8 5e}
018ah mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c86d5b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 5b 6d c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 0d b9 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 fe b8 5e}
01c9h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c86d5af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5a 6d c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 0c b9 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 fe b8 5e}
0208h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c86d5ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 5a 6d c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 0c b9 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 fd b8 5e}
0247h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c86d5ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 5a 6d c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 0c b9 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a fd b8 5e}
0286h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c86d5ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 5a 6d c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 0c b9 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b fd b8 5e}
02c5h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c86d5ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 5a 6d c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 0b b9 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c fd b8 5e}
0304h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c86d5aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 5a 6d c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 0b b9 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd fc b8 5e}
0343h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c86d5a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 5a 6d c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 0b b9 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e fc b8 5e}
0382h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c86d5a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 5a 6d c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 0b b9 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f fc b8 5e}
03c1h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c86d5a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5a 6d c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 0a b9 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 fc b8 5e}
0400h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c86d5a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5a 6d c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 0a b9 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 fb b8 5e}
043fh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c86d5a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 5a 6d c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 0a b9 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 fb b8 5e}
047eh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c86d5a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5a 6d c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 0a b9 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 fb b8 5e}
04bdh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c86d5a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 5a 6d c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 09 b9 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 fb b8 5e}
04fch mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c86d5a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 5a 6d c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 09 b9 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 fa b8 5e}
053bh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c86d5a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5a 6d c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 09 b9 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 fa b8 5e}
057ah mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c86d5a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 5a 6d c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 09 b9 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 fa b8 5e}
05b9h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c86d59f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 59 6d c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 08 b9 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 fa b8 5e}
05f8h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c86d59e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 59 6d c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 08 b9 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 f9 b8 5e}
0637h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c86d59d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 59 6d c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 08 b9 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d f9 b8 5e}
0673h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c86d41f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 41 6d c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8c1d0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d0 c1 c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 08 b9 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 f9 b8 5e}
06afh mov rax,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 ec 61 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c86d41e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 41 6d c8 f7 7f 00 00}
06c7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06ceh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
06d2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
06d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d6h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<int>> lookup<int>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_g[32i](n256,TernaryBitLogicKind~8u)[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 a0 06 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 f7 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 5d 6d c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 61 06 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 f7 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 5c 6d c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 22 06 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 f7 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 5c 6d c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 e3 05 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 f7 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 5c 6d c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 a4 05 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 f6 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 5c 6d c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 65 05 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 f6 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 5c 6d c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 26 05 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 f6 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 5c 6d c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 e7 04 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 f6 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 5c 6d c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 a8 04 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 f5 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 5c 6d c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 69 04 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a f5 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 5c 6d c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 2a 04 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b f5 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 5c 6d c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 eb 03 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c f5 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 5c 6d c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 ac 03 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd f4 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 5c 6d c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 6d 03 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e f4 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 5c 6d c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 2e 03 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f f4 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 5c 6d c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 ef 02 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 f4 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 5c 6d c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 b0 02 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 f3 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 5c 6d c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 71 02 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 f3 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 5b 6d c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 32 02 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 f3 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 5b 6d c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 f3 01 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 f3 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 5b 6d c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 b4 01 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 f2 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 5b 6d c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 75 01 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 f2 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 5b 6d c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 36 01 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 f2 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 5b 6d c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 f7 00 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 f2 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 5b 6d c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 b8 00 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 f1 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 5b 6d c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 7c 00 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad f1 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 5b 6d c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 68 d3 c1 c8 f7 7f 00 00 e8 40 00 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 f1 b8 5e 48 b8 a0 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 68 5b 6d c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 06 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 f7 b8 5e}
004fh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86d5d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 5d 6d c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 06 b9 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 f7 b8 5e}
008eh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86d5cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5c 6d c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 06 b9 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 f7 b8 5e}
00cdh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86d5ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 5c 6d c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 05 b9 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 f7 b8 5e}
010ch mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c86d5cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 5c 6d c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 05 b9 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 f6 b8 5e}
014bh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c86d5cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 5c 6d c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 05 b9 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 f6 b8 5e}
018ah mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c86d5cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 5c 6d c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 05 b9 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 f6 b8 5e}
01c9h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c86d5ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 5c 6d c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 04 b9 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 f6 b8 5e}
0208h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c86d5c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 5c 6d c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 04 b9 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 f5 b8 5e}
0247h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c86d5c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 5c 6d c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 04 b9 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a f5 b8 5e}
0286h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c86d5c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5c 6d c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 04 b9 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b f5 b8 5e}
02c5h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c86d5c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5c 6d c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 03 b9 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c f5 b8 5e}
0304h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c86d5c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 5c 6d c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 03 b9 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd f4 b8 5e}
0343h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c86d5c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5c 6d c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 03 b9 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e f4 b8 5e}
0382h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c86d5c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 5c 6d c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 03 b9 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f f4 b8 5e}
03c1h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c86d5c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 5c 6d c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 02 b9 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 f4 b8 5e}
0400h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c86d5c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5c 6d c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 02 b9 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 f3 b8 5e}
043fh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c86d5c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 5c 6d c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 02 b9 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 f3 b8 5e}
047eh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c86d5bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5b 6d c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 02 b9 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 f3 b8 5e}
04bdh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c86d5be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 5b 6d c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 01 b9 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 f3 b8 5e}
04fch mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c86d5bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 5b 6d c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 01 b9 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 f2 b8 5e}
053bh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c86d5bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 5b 6d c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 01 b9 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 f2 b8 5e}
057ah mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c86d5bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 5b 6d c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 01 b9 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 f2 b8 5e}
05b9h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c86d5ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 5b 6d c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 00 b9 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 f2 b8 5e}
05f8h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c86d5b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 5b 6d c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 00 b9 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 f1 b8 5e}
0637h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c86d5b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 5b 6d c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 00 b9 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad f1 b8 5e}
0673h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c86d5b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5b 6d c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8c1d368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 c1 c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 00 b9 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 f1 b8 5e}
06afh mov rax,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 ec 61 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c86d5b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 5b 6d c8 f7 7f 00 00}
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
; lookup_g[64u](n256,TernaryBitLogicKind~8u)[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 b0 fa b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 eb b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 6e 6d c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 71 fa b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 eb b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 6e 6d c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 32 fa b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 eb b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 6e 6d c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 f3 f9 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 eb b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 6e 6d c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 b4 f9 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 ea b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 6e 6d c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 75 f9 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 ea b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 6e 6d c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 36 f9 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 ea b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 6e 6d c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 f7 f8 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 ea b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 6e 6d c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 b8 f8 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 e9 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 6e 6d c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 79 f8 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa e9 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 6e 6d c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 3a f8 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b e9 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 6d 6d c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 fb f7 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c e9 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 6d 6d c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 bc f7 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed e8 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 6d 6d c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 7d f7 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae e8 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 6d 6d c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 3e f7 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f e8 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 6d 6d c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 ff f6 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 e8 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 5d 6d c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 c0 f6 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 e7 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 5d 6d c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 81 f6 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 e7 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 5d 6d c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 42 f6 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 e7 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 5d 6d c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 03 f6 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 e7 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 5d 6d c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 c4 f5 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 e6 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 5d 6d c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 85 f5 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 e6 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 5d 6d c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 46 f5 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 e6 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 5d 6d c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 07 f5 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 e6 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 5d 6d c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 c8 f4 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 e5 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 5d 6d c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 8c f4 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bd e5 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 5d 6d c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d8 d5 c1 c8 f7 7f 00 00 e8 50 f4 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 e5 b8 5e 48 b8 a0 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 18 5d 6d c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 fa b8 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 eb b8 5e}
004fh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86d6e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 6e 6d c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 fa b8 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 eb b8 5e}
008eh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86d6e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 6e 6d c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 fa b8 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 eb b8 5e}
00cdh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86d6e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 6e 6d c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 f9 b8 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 eb b8 5e}
010ch mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c86d6e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6e 6d c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 f9 b8 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 ea b8 5e}
014bh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c86d6e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 6e 6d c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 f9 b8 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 ea b8 5e}
018ah mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c86d6e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 6e 6d c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 f9 b8 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 ea b8 5e}
01c9h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c86d6e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 6e 6d c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 f8 b8 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 ea b8 5e}
0208h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c86d6e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 6e 6d c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 f8 b8 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 e9 b8 5e}
0247h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c86d6e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 6e 6d c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 f8 b8 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa e9 b8 5e}
0286h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c86d6e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 6e 6d c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a f8 b8 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b e9 b8 5e}
02c5h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c86d6df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 6d 6d c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb f7 b8 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c e9 b8 5e}
0304h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c86d6de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 6d 6d c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc f7 b8 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed e8 b8 5e}
0343h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c86d6dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 6d 6d c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d f7 b8 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae e8 b8 5e}
0382h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c86d6dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 6d 6d c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e f7 b8 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f e8 b8 5e}
03c1h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c86d6db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 6d 6d c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff f6 b8 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 e8 b8 5e}
0400h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c86d5dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 5d 6d c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 f6 b8 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 e7 b8 5e}
043fh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c86d5db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 5d 6d c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 f6 b8 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 e7 b8 5e}
047eh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c86d5da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 5d 6d c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 f6 b8 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 e7 b8 5e}
04bdh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c86d5d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 5d 6d c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 f6 b8 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 e7 b8 5e}
04fch mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c86d5d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 5d 6d c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 f5 b8 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 e6 b8 5e}
053bh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c86d5d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5d 6d c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 f5 b8 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 e6 b8 5e}
057ah mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c86d5d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5d 6d c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 f5 b8 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 e6 b8 5e}
05b9h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c86d5d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 5d 6d c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 f5 b8 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 e6 b8 5e}
05f8h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c86d5d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5d 6d c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 f4 b8 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 e5 b8 5e}
0637h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c86d5d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 5d 6d c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c f4 b8 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd e5 b8 5e}
0673h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c86d5d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 5d 6d c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8c1d5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d5 c1 c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 f4 b8 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 e5 b8 5e}
06afh mov rax,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 ec 61 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c86d5d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 5d 6d c8 f7 7f 00 00}
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
; lookup_g[64i](n256,TernaryBitLogicKind~8u)[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 c0 f2 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 e3 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 70 6d c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 81 f2 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 e3 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 70 6d c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 42 f2 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 e3 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 70 6d c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 03 f2 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 e3 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 70 6d c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 c4 f1 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 e2 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 70 6d c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 85 f1 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 e2 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 6f 6d c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 46 f1 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 e2 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 6f 6d c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 07 f1 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 e2 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 6f 6d c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 c8 f0 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 e1 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 6f 6d c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 89 f0 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba e1 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 6f 6d c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 4a f0 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b e1 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 6f 6d c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 0b f0 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c e1 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 6f 6d c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 cc ef b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd e0 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 6f 6d c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 8d ef b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be e0 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 6f 6d c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 4e ef b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f e0 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 6f 6d c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 0f ef b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 e0 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 6f 6d c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 d0 ee b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 e0 b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 6f 6d c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 91 ee b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 df b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 6f 6d c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 52 ee b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 df b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 6f 6d c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 13 ee b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 df b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 6f 6d c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 d4 ed b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 df b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 6f 6d c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 95 ed b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 de b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 6e 6d c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 56 ed b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 de b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 6e 6d c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 17 ed b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 de b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 6e 6d c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 d8 ec b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 de b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 6e 6d c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 9c ec b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd dd b8 5e 48 b9 a0 ec 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 6e 6d c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 48 d8 c1 c8 f7 7f 00 00 e8 60 ec b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 dd b8 5e 48 b8 a0 ec 61 c7 f7 7f 00 00 48 89 46 18 48 b8 a8 6e 6d c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0031h mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 f2 b8 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 e3 b8 5e}
004fh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86d7048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 70 6d c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 f2 b8 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 e3 b8 5e}
008eh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86d7038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 70 6d c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 f2 b8 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 e3 b8 5e}
00cdh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86d7028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 70 6d c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 f2 b8 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 e3 b8 5e}
010ch mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c86d7018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 70 6d c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 f1 b8 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 e2 b8 5e}
014bh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c86d7008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 70 6d c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 f1 b8 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 e2 b8 5e}
018ah mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c86d6ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 6f 6d c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 f1 b8 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 e2 b8 5e}
01c9h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c86d6fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 6f 6d c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 f1 b8 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 e2 b8 5e}
0208h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c86d6fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 6f 6d c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 f0 b8 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 e1 b8 5e}
0247h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c86d6fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 6f 6d c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 f0 b8 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba e1 b8 5e}
0286h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c86d6fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 6f 6d c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a f0 b8 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b e1 b8 5e}
02c5h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c86d6fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 6f 6d c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b f0 b8 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c e1 b8 5e}
0304h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c86d6f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 6f 6d c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc ef b8 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd e0 b8 5e}
0343h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c86d6f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 6f 6d c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d ef b8 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be e0 b8 5e}
0382h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c86d6f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 6f 6d c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e ef b8 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f e0 b8 5e}
03c1h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c86d6f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 6d c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f ef b8 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 e0 b8 5e}
0400h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c86d6f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 6f 6d c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 ee b8 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 e0 b8 5e}
043fh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c86d6f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 6f 6d c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 ee b8 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 df b8 5e}
047eh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c86d6f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 6f 6d c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 ee b8 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 df b8 5e}
04bdh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c86d6f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 6f 6d c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 ee b8 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 df b8 5e}
04fch mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c86d6f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 6f 6d c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 ed b8 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 df b8 5e}
053bh mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c86d6f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 6f 6d c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 ed b8 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 de b8 5e}
057ah mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c86d6ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 6e 6d c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 ed b8 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 de b8 5e}
05b9h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c86d6ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 6e 6d c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 ed b8 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 de b8 5e}
05f8h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c86d6ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 6e 6d c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 ec b8 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 de b8 5e}
0637h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c86d6ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 6e 6d c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c ec b8 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd dd b8 5e}
0673h mov rcx,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ec 61 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c86d6eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 6e 6d c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8c1d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 c1 c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 ec b8 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 dd b8 5e}
06afh mov rax,7ff7c761eca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 ec 61 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c86d6ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 6e 6d c8 f7 7f 00 00}
06c7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06ceh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
06d2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
06d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d6h ret                                     ; RET || C3 || encoded[1]{c3}
