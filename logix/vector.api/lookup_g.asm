------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<byte>> lookup<byte>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 e0 13 ad c8 f7 7f 00 00 e8 37 26 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 17 b1 5e 48 b8 60 e2 63 c7 f7 7f 00 00 48 89 46 18 48 b8 60 7b 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ad13e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 13 ad c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 26 b1 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 17 b1 5e}
0038h mov rax,7ff7c763e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8747b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 7b 74 c8 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 90 41 ad c8 f7 7f 00 00 e8 e7 24 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 16 b1 5e 48 b8 60 e2 63 c7 f7 7f 00 00 48 89 46 18 48 b8 00 7c 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ad4190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 41 ad c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 24 b1 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 16 b1 5e}
0038h mov rax,7ff7c763e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8747c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 7c 74 c8 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 90 15 ad c8 f7 7f 00 00 e8 97 23 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 14 b1 5e 48 b8 60 e2 63 c7 f7 7f 00 00 48 89 46 18 48 b8 50 7c 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ad1590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 15 ad c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 23 b1 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 14 b1 5e}
0038h mov rax,7ff7c763e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8747c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 7c 74 c8 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 b0 1f ad c8 f7 7f 00 00 e8 47 22 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 13 b1 5e 48 b8 60 e2 63 c7 f7 7f 00 00 48 89 46 18 48 b8 a0 7c 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ad1fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1f ad c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 22 b1 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 13 b1 5e}
0038h mov rax,7ff7c763e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8747ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 7c 74 c8 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 40 17 ad c8 f7 7f 00 00 e8 f7 20 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 12 b1 5e 48 b8 60 e2 63 c7 f7 7f 00 00 48 89 46 18 48 b8 f8 9c 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ad1740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 17 ad c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 20 b1 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 12 b1 5e}
0038h mov rax,7ff7c763e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8749cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 9c 74 c8 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 60 21 ad c8 f7 7f 00 00 e8 a7 1f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 10 b1 5e 48 b8 60 e2 63 c7 f7 7f 00 00 48 89 46 18 48 b8 48 9d 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ad2160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 ad c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 1f b1 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 10 b1 5e}
0038h mov rax,7ff7c763e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8749d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 9d 74 c8 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 10 f3 ab c8 f7 7f 00 00 e8 57 1e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 88 0f b1 5e 48 b8 60 e2 63 c7 f7 7f 00 00 48 89 46 18 48 b8 98 9d 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8abf310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 f3 ab c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 1e b1 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 0f b1 5e}
0038h mov rax,7ff7c763e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8749d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 9d 74 c8 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 40 43 ad c8 f7 7f 00 00 e8 07 1d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 0e b1 5e 48 b8 60 e2 63 c7 f7 7f 00 00 48 89 46 18 48 b8 e8 9d 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ad4340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 43 ad c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 1d b1 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 0e b1 5e}
0038h mov rax,7ff7c763e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8749de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 9d 74 c8 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 a0 1a ad c8 f7 7f 00 00 e8 b7 1b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 0c b1 5e 48 b8 60 e2 63 c7 f7 7f 00 00 48 89 46 18 48 b8 d8 9e 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ad1aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 1a ad c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 1b b1 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 0c b1 5e}
0038h mov rax,7ff7c763e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8749ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 9e 74 c8 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 f0 44 ad c8 f7 7f 00 00 e8 67 1a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 0b b1 5e 48 b8 60 e2 63 c7 f7 7f 00 00 48 89 46 18 48 b8 78 9f 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ad44f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 44 ad c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 1a b1 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 0b b1 5e}
0038h mov rax,7ff7c763e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8749f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 9f 74 c8 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 50 1c ad c8 f7 7f 00 00 e8 17 19 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 0a b1 5e 48 b8 60 e2 63 c7 f7 7f 00 00 48 89 46 18 48 b8 c8 9f 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ad1c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 1c ad c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 19 b1 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 0a b1 5e}
0038h mov rax,7ff7c763e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8749fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 9f 74 c8 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 10 23 ad c8 f7 7f 00 00 e8 c7 17 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 08 b1 5e 48 b8 60 e2 63 c7 f7 7f 00 00 48 89 46 18 48 b8 18 a0 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ad2310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 23 ad c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 17 b1 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 08 b1 5e}
0038h mov rax,7ff7c763e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c874a018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 a0 74 c8 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 00 1e ad c8 f7 7f 00 00 e8 77 16 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 07 b1 5e 48 b8 60 e2 63 c7 f7 7f 00 00 48 89 46 18 48 b8 68 a0 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ad1e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 1e ad c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 16 b1 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 07 b1 5e}
0038h mov rax,7ff7c763e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c874a068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 a0 74 c8 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 c0 24 ad c8 f7 7f 00 00 e8 27 15 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 06 b1 5e 48 b8 60 e2 63 c7 f7 7f 00 00 48 89 46 18 48 b8 b8 a0 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ad24c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 24 ad c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 15 b1 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 06 b1 5e}
0038h mov rax,7ff7c763e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c874a0b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 a0 74 c8 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 f0 18 ad c8 f7 7f 00 00 e8 d7 13 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 05 b1 5e 48 b8 60 e2 63 c7 f7 7f 00 00 48 89 46 18 48 b8 88 ae 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ad18f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 18 ad c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 13 b1 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 05 b1 5e}
0038h mov rax,7ff7c763e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c874ae88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 ae 74 c8 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 d8 61 ad c8 f7 7f 00 00 e8 87 12 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 03 b1 5e 48 b8 60 e2 63 c7 f7 7f 00 00 48 89 46 18 48 b8 d8 ae 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ad61d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 61 ad c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 12 b1 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 03 b1 5e}
0038h mov rax,7ff7c763e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 63 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c874aed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 ae 74 c8 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 50 b0 ab c8 f7 7f 00 00 e8 20 11 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 51 02 b1 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 e8 af 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8abb050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b0 ab c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 11 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 02 b1 5e}
004fh mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c874afe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 af 74 c8 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 20 ad ab c8 f7 7f 00 00 e8 60 0f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 00 b1 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 68 b0 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8abad20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ad ab c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 0f b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 00 b1 5e}
004fh mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c874b068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 b0 74 c8 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c0 a9 ab c8 f7 7f 00 00 e8 a0 0d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 fe b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 a8 b0 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8aba9c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a9 ab c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 0d b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 fe b0 5e}
004fh mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c874b0a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 b0 74 c8 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 10 a8 ab c8 f7 7f 00 00 e8 e0 0b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 fd b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 e8 b0 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8aba810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a8 ab c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 0b b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 fd b0 5e}
004fh mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c874b0e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 b0 74 c8 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 60 bb ab c8 f7 7f 00 00 e8 20 0a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 51 fb b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 28 b1 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8abbb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 bb ab c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 0a b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 fb b0 5e}
004fh mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c874b128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 b1 74 c8 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 30 b8 ab c8 f7 7f 00 00 e8 60 08 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 f9 b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 68 b1 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8abb830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b8 ab c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 08 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 f9 b0 5e}
004fh mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c874b168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 b1 74 c8 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 80 b3 ab c8 f7 7f 00 00 e8 a0 06 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 f7 b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 a8 b1 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8abb380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b3 ab c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 06 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 f7 b0 5e}
004fh mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c874b1a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 b1 74 c8 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 90 be ab c8 f7 7f 00 00 e8 e0 04 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 f6 b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 68 b2 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8abbe90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 be ab c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 04 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 f6 b0 5e}
004fh mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c874b268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 b2 74 c8 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 70 df ab c8 f7 7f 00 00 e8 20 ff b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 51 f0 b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 f8 c2 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8abdf70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 df ab c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 ff b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 f0 b0 5e}
004fh mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c874c2f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 c2 74 c8 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[97] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 60 db ab c8 f7 7f 00 00 e8 60 fd b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 ee b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 78 c3}
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
0031h mov rcx,7ff7c8abdb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 db ab c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 fd b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 ee b0 5e}
004fh mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh (bad)                                   ; <invalid> || <invalid> || encoded[4]{48 b8 78 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ushort>> lookup<ushort>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_ComparisonKind~8u[97] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f8 3d ab c8 f7 7f 00 00 e8 a0 fb b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 ec b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 b8 c3}
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
0031h mov rcx,7ff7c8ab3df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3d ab c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 fb b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 ec b0 5e}
004fh mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh (bad)                                   ; <invalid> || <invalid> || encoded[4]{48 b8 b8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<short>> lookup<short>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_ComparisonKind~8u[97] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 70 ab ab c8 f7 7f 00 00 e8 e0 f9 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 eb b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 f8 c3}
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
0031h mov rcx,7ff7c8abab70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ab ab c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 f9 b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 eb b0 5e}
004fh mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh (bad)                                   ; <invalid> || <invalid> || encoded[4]{48 b8 f8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<uint>> lookup<uint>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d0 e8 ab c8 f7 7f 00 00 e8 20 f8 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 51 e9 b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 38 c4 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8abe8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e8 ab c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 f8 b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 e9 b0 5e}
004fh mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c874c438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 c4 74 c8 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a0 e5 ab c8 f7 7f 00 00 e8 60 f6 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 e7 b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 78 c4 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8abe5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e5 ab c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 f6 b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 e7 b0 5e}
004fh mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c874c478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 c4 74 c8 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 30 ef ab c8 f7 7f 00 00 e8 a0 f4 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 e5 b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 b8 c4 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8abef30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ef ab c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 f4 b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 e5 b0 5e}
004fh mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c874c4b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 c4 74 c8 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 00 ec ab c8 f7 7f 00 00 e8 e0 f2 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 e4 b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 58 d1 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8abec00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ec ab c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 f2 b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 e4 b0 5e}
004fh mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c874d158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 d1 74 c8 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 30 6d ce c8 f7 7f 00 00 e8 1a f1 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b e2 b0 5e 48 b8 00 ea 63 c7 f7 7f 00 00 48 89 46 18 48 b8 28 6b 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8ce6d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 6d ce c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a f1 b0 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b e2 b0 5e}
0055h mov rax,7ff7c763ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 63 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8756b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 6b 75 c8 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 a0 72 ce c8 f7 7f 00 00 e8 0a ef b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3b e0 b0 5e 48 b8 00 ea 63 c7 f7 7f 00 00 48 89 46 18 48 b8 f0 6b 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8ce72a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 72 ce c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a ef b0 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b e0 b0 5e}
0055h mov rax,7ff7c763ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 63 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8756bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 6b 75 c8 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 30 76 ce c8 f7 7f 00 00 e8 fa ec b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2b de b0 5e 48 b8 00 ea 63 c7 f7 7f 00 00 48 89 46 18 48 b8 68 6c 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8ce7630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 76 ce c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa ec b0 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b de b0 5e}
0055h mov rax,7ff7c763ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 63 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8756c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 6c 75 c8 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 c0 79 ce c8 f7 7f 00 00 e8 ea ea b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b dc b0 5e 48 b8 00 ea 63 c7 f7 7f 00 00 48 89 46 18 48 b8 e0 6c 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8ce79c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 79 ce c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea ea b0 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b dc b0 5e}
0055h mov rax,7ff7c763ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 63 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8756ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 6c 75 c8 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 50 7d ce c8 f7 7f 00 00 e8 da e4 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b d6 b0 5e 48 b8 00 ea 63 c7 f7 7f 00 00 48 89 46 18 48 b8 30 6d 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8ce7d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 7d ce c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da e4 b0 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b d6 b0 5e}
0055h mov rax,7ff7c763ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 63 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8756d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 6d 75 c8 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 e0 80 ce c8 f7 7f 00 00 e8 ca e2 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb d3 b0 5e 48 b8 00 ea 63 c7 f7 7f 00 00 48 89 46 18 48 b8 18 84 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8ce80e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 80 ce c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca e2 b0 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb d3 b0 5e}
0055h mov rax,7ff7c763ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 63 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8758418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 84 75 c8 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 70 84 ce c8 f7 7f 00 00 e8 ba e0 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb d1 b0 5e 48 b8 00 ea 63 c7 f7 7f 00 00 48 89 46 18 48 b8 90 84 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8ce8470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 84 ce c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba e0 b0 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb d1 b0 5e}
0055h mov rax,7ff7c763ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 63 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8758490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 84 75 c8 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 00 88 ce c8 f7 7f 00 00 e8 aa de b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db cf b0 5e 48 b8 00 ea 63 c7 f7 7f 00 00 48 89 46 18 48 b8 08 85 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8ce8800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 88 ce c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa de b0 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db cf b0 5e}
0055h mov rax,7ff7c763ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 63 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8758508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 85 75 c8 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 a8 8f ce c8 f7 7f 00 00 e8 9a dc b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cb cd b0 5e 48 b8 00 ea 63 c7 f7 7f 00 00 48 89 46 18 48 b8 28 86 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8ce8fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 8f ce c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a dc b0 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb cd b0 5e}
0055h mov rax,7ff7c763ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 63 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8758628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 86 75 c8 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 18 95 ce c8 f7 7f 00 00 e8 8a da b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb cb b0 5e 48 b8 00 ea 63 c7 f7 7f 00 00 48 89 46 18 48 b8 f0 86 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8ce9518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 95 ce c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a da b0 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb cb b0 5e}
0055h mov rax,7ff7c763ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 63 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c87586f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 86 75 c8 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 a8 98 ce c8 f7 7f 00 00 e8 7a d4 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab c5 b0 5e 48 b8 00 ea 63 c7 f7 7f 00 00 48 89 46 18 48 b8 68 87 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8ce98a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 98 ce c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a d4 b0 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab c5 b0 5e}
0055h mov rax,7ff7c763ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 63 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8758768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 87 75 c8 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[83] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 38 9c ce c8 f7 7f 00 00 e8 6a d2 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b c3}
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
0037h mov rcx,7ff7c8ce9c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 9c ce c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a d2 b0 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 9b c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector256<uint>> lookup<uint>(N256 w, ShiftOpKind:byte kind)
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 c8 9f ce c8 f7 7f 00 00 e8 5a d0 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b c1 b0 5e 48 b8 00 ea 63 c7 f7 7f 00 00 48 89 46 18 48 b8 b8 94 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8ce9fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 9f ce c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a d0 b0 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b c1 b0 5e}
0055h mov rax,7ff7c763ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 63 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c87594b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 94 75 c8 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 58 a3 ce c8 f7 7f 00 00 e8 4a ce b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b bf b0 5e 48 b8 00 ea 63 c7 f7 7f 00 00 48 89 46 18 48 b8 30 95 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8cea358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 a3 ce c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a ce b0 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b bf b0 5e}
0055h mov rax,7ff7c763ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 63 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8759530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 95 75 c8 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 e8 a6 ce c8 f7 7f 00 00 e8 3a cc b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b bd b0 5e 48 b8 00 ea 63 c7 f7 7f 00 00 48 89 46 18 48 b8 a8 95 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8cea6e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 a6 ce c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a cc b0 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b bd b0 5e}
0055h mov rax,7ff7c763ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 63 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c87595a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 95 75 c8 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 78 aa ce c8 f7 7f 00 00 e8 2a ca b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b bb b0 5e 48 b8 00 ea 63 c7 f7 7f 00 00 48 89 46 18 48 b8 20 96 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8ceaa78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 aa ce c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a ca b0 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b bb b0 5e}
0055h mov rax,7ff7c763ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 63 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8759620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 96 75 c8 f7 7f 00 00}
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
; lookup_gn128_BinaryBitLogicKind~8u[123] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 50 b0 ab c8 f7 7f 00 00 e8 22 c4 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 b5 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 d2 74 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 50 b0 ab c8 f7 7f 00 00 e8 e3 c3}
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
002fh mov rcx,7ff7c8abb050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b0 ab c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 c4 b0 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 b5 b0 5e}
004dh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c874d208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 d2 74 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8abb050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b0 ab c8 f7 7f 00 00}
0078h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 e3 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<sbyte>> lookup<sbyte>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 20 ad ab c8 f7 7f 00 00 e8 12 bf b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 b0 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 d7 74 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 20 ad ab c8 f7 7f 00 00 e8 d3 be b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 b0 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 d8 74 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 20 ad ab c8 f7 7f 00 00 e8 94 be b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 af b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 d8 74 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 20 ad ab c8 f7 7f 00 00 e8 55 be b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 86 af b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 d7 74 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 20 ad ab c8 f7 7f 00 00 e8 16 be b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 47 af b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 d8 74 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 20 ad ab c8 f7 7f 00 00 e8 d7 bd b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 af b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 d8 74 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 20 ad ab c8 f7 7f 00 00 e8 98 bd b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 ae b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 d8 74 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 20 ad ab c8 f7 7f 00 00 e8 59 bd b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8a ae b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 d8 74 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 20 ad ab c8 f7 7f 00 00 e8 1a bd b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b ae b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 d8 74 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 20 ad ab c8 f7 7f 00 00 e8 db bc b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c ae b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 d8 74 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 20 ad ab c8 f7 7f 00 00 e8 9c bc b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd ad b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 d8 74 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 20 ad ab c8 f7 7f 00 00 e8 5d bc b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8e ad b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 d8 74 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 20 ad ab c8 f7 7f 00 00 e8 1e bc b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4f ad b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 d8 74 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 20 ad ab c8 f7 7f 00 00 e8 df bb b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 10 ad b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 d8 74 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 20 ad ab c8 f7 7f 00 00 e8 a3 bb b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 ac b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 d8 74 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 20 ad ab c8 f7 7f 00 00 e8 67 bb b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 ac b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 b8 d8 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8abad20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ad ab c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 bf b0 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 b0 b0 5e}
004dh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c874d7e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 d7 74 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8abad20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ad ab c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 be b0 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 b0 b0 5e}
008ch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c874d8d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d8 74 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8abad20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ad ab c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 be b0 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 af b0 5e}
00cbh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c874d8c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 d8 74 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8abad20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ad ab c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 be b0 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 af b0 5e}
010ah mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c874d7f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d7 74 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8abad20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ad ab c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 be b0 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 af b0 5e}
0149h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c874d868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d8 74 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8abad20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ad ab c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 bd b0 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 af b0 5e}
0188h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c874d858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 d8 74 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8abad20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ad ab c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 bd b0 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 ae b0 5e}
01c7h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c874d878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 d8 74 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8abad20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ad ab c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 bd b0 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a ae b0 5e}
0206h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c874d848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d8 74 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8abad20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ad ab c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a bd b0 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b ae b0 5e}
0245h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c874d8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 74 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8abad20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ad ab c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db bc b0 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c ae b0 5e}
0284h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c874d888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d8 74 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8abad20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ad ab c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c bc b0 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd ad b0 5e}
02c3h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c874d818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d8 74 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8abad20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ad ab c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d bc b0 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e ad b0 5e}
0302h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c874d838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d8 74 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8abad20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ad ab c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e bc b0 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f ad b0 5e}
0341h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c874d828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 d8 74 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8abad20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ad ab c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df bb b0 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 ad b0 5e}
0380h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c874d898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 d8 74 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8abad20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ad ab c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 bb b0 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 ac b0 5e}
03bch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c874d808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 d8 74 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8abad20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ad ab c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 bb b0 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 ac b0 5e}
03f8h mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c874d8b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 d8 74 c8 f7 7f 00 00}
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
; lookup_gn128_BinaryBitLogicKind~8u[122] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 c0 a9 ab c8 f7 7f 00 00 e8 02 ba b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 ab b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 d8 74 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c0 a9 ab c8 f7 7f 00 00 e8 c3}
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
002fh mov rcx,7ff7c8aba9c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a9 ab c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 ba b0 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 ab b0 5e}
004dh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c874d8f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d8 74 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8aba9c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a9 ab c8 f7 7f 00 00}
0078h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<short>> lookup<short>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 10 a8 ab c8 f7 7f 00 00 e8 f2 b4 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 a6 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 da 74 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 10 a8 ab c8 f7 7f 00 00 e8 b3 b4 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 a5 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 da 74 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 10 a8 ab c8 f7 7f 00 00 e8 74 b4 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 a5 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 da 74 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 10 a8 ab c8 f7 7f 00 00 e8 35 b4 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 66 a5 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 da 74 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 10 a8 ab c8 f7 7f 00 00 e8 f6 b3 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 27 a5 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 da 74 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 10 a8 ab c8 f7 7f 00 00 e8 b7 b3 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 a4 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 da 74 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 10 a8 ab c8 f7 7f 00 00 e8 78 b3 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 a4 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 da 74 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 10 a8 ab c8 f7 7f 00 00 e8 39 b3 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6a a4 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 da 74 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 10 a8 ab c8 f7 7f 00 00 e8 fa b2 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2b a4 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 da 74 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 10 a8 ab c8 f7 7f 00 00 e8 bb b2 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec a3 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 da 74 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 10 a8 ab c8 f7 7f 00 00 e8 7c b2 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad a3 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 da 74 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 10 a8 ab c8 f7 7f 00 00 e8 3d b2 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6e a3 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 da 74 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 10 a8 ab c8 f7 7f 00 00 e8 fe b1 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2f a3 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 da 74 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 10 a8 ab c8 f7 7f 00 00 e8 bf b1 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f0 a2 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 da 74 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 10 a8 ab c8 f7 7f 00 00 e8 83 b1 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 a2 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 da 74 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 10 a8 ab c8 f7 7f 00 00 e8 47 b1 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 a2 b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 d8 da 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8aba810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a8 ab c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 b4 b0 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 a6 b0 5e}
004dh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c874da08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 da 74 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8aba810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a8 ab c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 b4 b0 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 a5 b0 5e}
008ch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c874daf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 da 74 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8aba810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a8 ab c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 b4 b0 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 a5 b0 5e}
00cbh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c874dae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 da 74 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8aba810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a8 ab c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 b4 b0 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 a5 b0 5e}
010ah mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c874da18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 da 74 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8aba810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a8 ab c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 b3 b0 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 a5 b0 5e}
0149h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c874da88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 da 74 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8aba810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a8 ab c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 b3 b0 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 a4 b0 5e}
0188h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c874da78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 da 74 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8aba810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a8 ab c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 b3 b0 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 a4 b0 5e}
01c7h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c874da98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 da 74 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8aba810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a8 ab c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 b3 b0 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a a4 b0 5e}
0206h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c874da68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 da 74 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8aba810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a8 ab c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa b2 b0 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b a4 b0 5e}
0245h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c874dac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 da 74 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8aba810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a8 ab c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb b2 b0 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec a3 b0 5e}
0284h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c874daa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 da 74 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8aba810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a8 ab c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c b2 b0 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad a3 b0 5e}
02c3h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c874da38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 da 74 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8aba810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a8 ab c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d b2 b0 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e a3 b0 5e}
0302h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c874da58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 da 74 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8aba810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a8 ab c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe b1 b0 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f a3 b0 5e}
0341h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c874da48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 da 74 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8aba810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a8 ab c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf b1 b0 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 a2 b0 5e}
0380h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c874dab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 da 74 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8aba810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a8 ab c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 b1 b0 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 a2 b0 5e}
03bch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c874da28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 da 74 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8aba810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a8 ab c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 b1 b0 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 a2 b0 5e}
03f8h mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c874dad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 da 74 c8 f7 7f 00 00}
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
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 60 bb ab c8 f7 7f 00 00 e8 e2 af b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 a1 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 db 74 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 60 bb ab c8 f7 7f 00 00 e8 a3 af b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 a0 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 e7 74 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 60 bb ab c8 f7 7f 00 00 e8 64 af b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 a0 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 e7 74 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 60 bb ab c8 f7 7f 00 00 e8 25 af b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 a0 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 db 74 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 60 bb ab c8 f7 7f 00 00 e8 e6 ae b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 a0 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 db 74 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 60 bb ab c8 f7 7f 00 00 e8 a7 ae b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 9f b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 db 74 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 60 bb ab c8 f7 7f 00 00 e8 68 ae b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 9f b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 e7 74 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 60 bb ab c8 f7 7f 00 00 e8 29 ae b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a 9f b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 db 74 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 60 bb ab c8 f7 7f 00 00 e8 ea ad b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b 9f b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 e7 74 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 60 bb ab c8 f7 7f 00 00 e8 ab ad b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dc 9e b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 e7 74 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 60 bb ab c8 f7 7f 00 00 e8 6c ad b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d 9e b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 db 74 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 60 bb ab c8 f7 7f 00 00 e8 2d ad b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5e 9e b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 db 74 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 60 bb ab c8 f7 7f 00 00 e8 ee ac b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1f 9e b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 db 74 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 60 bb ab c8 f7 7f 00 00 e8 af ac b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e0 9d b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 e7 74 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 60 bb ab c8 f7 7f 00 00 e8 73 ac b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 9d b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 db 74 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 60 bb ab c8 f7 7f 00 00 e8 37 ac b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 9d b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 70 e7 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8abbb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 bb ab c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 af b0 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 a1 b0 5e}
004dh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c874db18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db 74 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8abbb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 bb ab c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 af b0 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 a0 b0 5e}
008ch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c874e790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e7 74 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8abbb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 bb ab c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 af b0 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 a0 b0 5e}
00cbh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c874e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 74 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8abbb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 bb ab c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 af b0 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 a0 b0 5e}
010ah mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c874db28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 db 74 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8abbb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 bb ab c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 ae b0 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 a0 b0 5e}
0149h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c874db98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 db 74 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8abbb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 bb ab c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 ae b0 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 9f b0 5e}
0188h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c874db88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 db 74 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8abbb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 bb ab c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 ae b0 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 9f b0 5e}
01c7h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c874e730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e7 74 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8abbb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 bb ab c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 ae b0 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 9f b0 5e}
0206h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c874db78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 db 74 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8abbb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 bb ab c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea ad b0 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 9f b0 5e}
0245h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c874e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 74 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8abbb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 bb ab c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab ad b0 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 9e b0 5e}
0284h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c874e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 74 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8abbb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 bb ab c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c ad b0 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 9e b0 5e}
02c3h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c874db48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 db 74 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8abbb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 bb ab c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d ad b0 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 9e b0 5e}
0302h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c874db68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 db 74 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8abbb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 bb ab c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee ac b0 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 9e b0 5e}
0341h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c874db58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 db 74 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8abbb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 bb ab c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af ac b0 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 9d b0 5e}
0380h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c874e750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e7 74 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8abbb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 bb ab c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 ac b0 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 9d b0 5e}
03bch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c874db38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 db 74 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8abbb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 bb ab c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 ac b0 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 9d b0 5e}
03f8h mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c874e770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 e7 74 c8 f7 7f 00 00}
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
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 30 b8 ab c8 f7 7f 00 00 e8 d2 aa b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 9c b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 e7 74 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 30 b8 ab c8 f7 7f 00 00 e8 93 aa b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 9b b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 e8 74 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 30 b8 ab c8 f7 7f 00 00 e8 54 aa b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 9b b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 e8 74 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 30 b8 ab c8 f7 7f 00 00 e8 15 aa b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 9b b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 e7 74 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 30 b8 ab c8 f7 7f 00 00 e8 d6 a9 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 9b b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 e8 74 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 30 b8 ab c8 f7 7f 00 00 e8 97 a9 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 9a b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 e8 74 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 30 b8 ab c8 f7 7f 00 00 e8 58 a9 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 9a b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 e8 74 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 30 b8 ab c8 f7 7f 00 00 e8 19 a9 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 9a b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 e8 74 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 30 b8 ab c8 f7 7f 00 00 e8 da a8 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 9a b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 e8 74 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 30 b8 ab c8 f7 7f 00 00 e8 9b a8 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 99 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 e8 74 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 30 b8 ab c8 f7 7f 00 00 e8 5c a8 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 99 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 e7 74 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 30 b8 ab c8 f7 7f 00 00 e8 1d a8 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 99 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 e8 74 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 30 b8 ab c8 f7 7f 00 00 e8 de a7 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 99 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 e7 74 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 30 b8 ab c8 f7 7f 00 00 e8 9f a7 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 98 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 e8 74 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 30 b8 ab c8 f7 7f 00 00 e8 63 a7 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 98 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 e7 74 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 30 b8 ab c8 f7 7f 00 00 e8 27 a7 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 98 b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 80 e8 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8abb830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b8 ab c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 aa b0 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 9c b0 5e}
004dh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c874e7b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 e7 74 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8abb830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b8 ab c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 aa b0 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 9b b0 5e}
008ch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c874e8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e8 74 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8abb830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b8 ab c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 aa b0 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 9b b0 5e}
00cbh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c874e890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e8 74 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8abb830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b8 ab c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 aa b0 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 9b b0 5e}
010ah mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c874e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 74 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8abb830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b8 ab c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 a9 b0 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 9b b0 5e}
0149h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c874e830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e8 74 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8abb830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b8 ab c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 a9 b0 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 9a b0 5e}
0188h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c874e820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e8 74 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8abb830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b8 ab c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 a9 b0 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 9a b0 5e}
01c7h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c874e840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e8 74 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8abb830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b8 ab c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 a9 b0 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 9a b0 5e}
0206h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c874e810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e8 74 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8abb830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b8 ab c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da a8 b0 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 9a b0 5e}
0245h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c874e870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e8 74 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8abb830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b8 ab c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b a8 b0 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 99 b0 5e}
0284h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c874e850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e8 74 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8abb830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b8 ab c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c a8 b0 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 99 b0 5e}
02c3h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c874e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 74 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8abb830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b8 ab c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d a8 b0 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 99 b0 5e}
0302h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c874e800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e8 74 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8abb830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b8 ab c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de a7 b0 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 99 b0 5e}
0341h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c874e7f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e7 74 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8abb830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b8 ab c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f a7 b0 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 98 b0 5e}
0380h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c874e860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e8 74 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8abb830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b8 ab c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 a7 b0 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 98 b0 5e}
03bch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c874e7d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e7 74 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8abb830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b8 ab c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 a7 b0 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 98 b0 5e}
03f8h mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c874e880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e8 74 c8 f7 7f 00 00}
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
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 80 b3 ab c8 f7 7f 00 00 e8 c2 a5 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 96 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 e8 74 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 80 b3 ab c8 f7 7f 00 00 e8 83 a5 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 96 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 e9 74 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 80 b3 ab c8 f7 7f 00 00 e8 44 a5 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 96 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 e9 74 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 80 b3 ab c8 f7 7f 00 00 e8 05 a5 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 96 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 e8 74 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 80 b3 ab c8 f7 7f 00 00 e8 c6 a4 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 95 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 e9 74 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 80 b3 ab c8 f7 7f 00 00 e8 87 a4 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 95 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 e9 74 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 80 b3 ab c8 f7 7f 00 00 e8 48 a4 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 95 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 e9 74 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 80 b3 ab c8 f7 7f 00 00 e8 09 a4 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3a 95 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 e9 74 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 80 b3 ab c8 f7 7f 00 00 e8 ca a3 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb 94 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 e9 74 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 80 b3 ab c8 f7 7f 00 00 e8 8b a3 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc 94 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 e9 74 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 80 b3 ab c8 f7 7f 00 00 e8 4c a3 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7d 94 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 e8 74 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 80 b3 ab c8 f7 7f 00 00 e8 0d a3 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3e 94 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 e9 74 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 80 b3 ab c8 f7 7f 00 00 e8 ce a2 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ff 93 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 e9 74 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 80 b3 ab c8 f7 7f 00 00 e8 8f a2 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c0 93 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 e9 74 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 80 b3 ab c8 f7 7f 00 00 e8 53 a2 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 84 93 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 e8 74 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 80 b3 ab c8 f7 7f 00 00 e8 17 a2 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 93 b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 90 e9 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8abb380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b3 ab c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 a5 b0 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 96 b0 5e}
004dh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c874e8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e8 74 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8abb380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b3 ab c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 a5 b0 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 96 b0 5e}
008ch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c874e9b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 e9 74 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8abb380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b3 ab c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 a5 b0 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 96 b0 5e}
00cbh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c874e9a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e9 74 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8abb380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b3 ab c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 a5 b0 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 96 b0 5e}
010ah mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c874e8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e8 74 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8abb380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b3 ab c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 a4 b0 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 95 b0 5e}
0149h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c874e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 74 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8abb380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b3 ab c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 a4 b0 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 95 b0 5e}
0188h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c874e930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e9 74 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8abb380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b3 ab c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 a4 b0 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 95 b0 5e}
01c7h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c874e950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e9 74 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8abb380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b3 ab c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 a4 b0 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 95 b0 5e}
0206h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c874e920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e9 74 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8abb380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b3 ab c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca a3 b0 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 94 b0 5e}
0245h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c874e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 74 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8abb380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b3 ab c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b a3 b0 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 94 b0 5e}
0284h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c874e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 74 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8abb380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b3 ab c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c a3 b0 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 94 b0 5e}
02c3h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c874e8f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e8 74 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8abb380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b3 ab c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d a3 b0 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 94 b0 5e}
0302h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c874e910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e9 74 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8abb380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b3 ab c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce a2 b0 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 93 b0 5e}
0341h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c874e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 74 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8abb380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b3 ab c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f a2 b0 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 93 b0 5e}
0380h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c874e970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e9 74 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8abb380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b3 ab c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 a2 b0 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 93 b0 5e}
03bch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c874e8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e8 74 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8abb380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b3 ab c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 a2 b0 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 93 b0 5e}
03f8h mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c874e990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e9 74 c8 f7 7f 00 00}
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
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 90 be ab c8 f7 7f 00 00 e8 b2 a0 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 91 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 e9 74 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 90 be ab c8 f7 7f 00 00 e8 73 a0 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 91 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 ea 74 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 90 be ab c8 f7 7f 00 00 e8 34 a0 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 91 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 ea 74 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 90 be ab c8 f7 7f 00 00 e8 f5 9f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 91 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 e9 74 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 90 be ab c8 f7 7f 00 00 e8 b6 9f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 90 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 ea 74 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 90 be ab c8 f7 7f 00 00 e8 77 9f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 90 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 ea 74 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 90 be ab c8 f7 7f 00 00 e8 38 9f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 90 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 ea 74 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 90 be ab c8 f7 7f 00 00 e8 f9 9e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2a 90 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 ea 74 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 90 be ab c8 f7 7f 00 00 e8 ba 9e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb 8f b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 ea 74 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 90 be ab c8 f7 7f 00 00 e8 7b 9e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac 8f b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 ea 74 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 90 be ab c8 f7 7f 00 00 e8 3c 9e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d 8f b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 ea 74 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 90 be ab c8 f7 7f 00 00 e8 fd 9d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2e 8f b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 ea 74 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 90 be ab c8 f7 7f 00 00 e8 be 9d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ef 8e b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 ea 74 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 90 be ab c8 f7 7f 00 00 e8 7f 9d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b0 8e b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 ea 74 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 90 be ab c8 f7 7f 00 00 e8 43 9d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 8e b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 e9 74 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 90 be ab c8 f7 7f 00 00 e8 07 9d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 8e b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 a0 ea 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8abbe90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 be ab c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 a0 b0 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 91 b0 5e}
004dh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c874e9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e9 74 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8abbe90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 be ab c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 a0 b0 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 91 b0 5e}
008ch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c874eac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 ea 74 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8abbe90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 be ab c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 a0 b0 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 91 b0 5e}
00cbh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c874eab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 ea 74 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8abbe90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 be ab c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 9f b0 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 91 b0 5e}
010ah mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c874e9e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e9 74 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8abbe90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 be ab c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 9f b0 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 90 b0 5e}
0149h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c874ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea 74 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8abbe90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 be ab c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 9f b0 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 90 b0 5e}
0188h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c874ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 74 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8abbe90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 be ab c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 9f b0 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 90 b0 5e}
01c7h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c874ea60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ea 74 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8abbe90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 be ab c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 9e b0 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 90 b0 5e}
0206h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c874ea30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ea 74 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8abbe90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 be ab c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 9e b0 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 8f b0 5e}
0245h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c874ea90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ea 74 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8abbe90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 be ab c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 9e b0 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 8f b0 5e}
0284h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c874ea70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ea 74 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8abbe90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 be ab c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 9e b0 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 8f b0 5e}
02c3h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c874ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 74 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8abbe90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 be ab c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 9d b0 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 8f b0 5e}
0302h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c874ea20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ea 74 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8abbe90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 be ab c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 9d b0 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 8e b0 5e}
0341h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c874ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 74 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8abbe90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 be ab c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 9d b0 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 8e b0 5e}
0380h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c874ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 74 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8abbe90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 be ab c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 9d b0 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 8e b0 5e}
03bch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c874e9f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e9 74 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8abbe90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 be ab c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 9d b0 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 8e b0 5e}
03f8h mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c874eaa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 ea 74 c8 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 70 df ab c8 f7 7f 00 00 e8 a2 9b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 8c b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 eb 74 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 70 df ab c8 f7 7f 00 00 e8 63 9b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 8c b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 f8 74 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 70 df ab c8 f7 7f 00 00 e8 24 9b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 8c b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 f8 74 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 70 df ab c8 f7 7f 00 00 e8 e5 9a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 16 8c b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 eb 74 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 70 df ab c8 f7 7f 00 00 e8 a6 9a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d7 8b b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 f8 74 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 70 df ab c8 f7 7f 00 00 e8 67 9a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 8b b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 f7 74 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 70 df ab c8 f7 7f 00 00 e8 28 9a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 8b b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 f8 74 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 70 df ab c8 f7 7f 00 00 e8 e9 99 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1a 8b b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 f7 74 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 70 df ab c8 f7 7f 00 00 e8 aa 99 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db 8a b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 f8 74 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 70 df ab c8 f7 7f 00 00 e8 6b 99 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c 8a b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 f8 74 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 70 df ab c8 f7 7f 00 00 e8 2c 99 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d 8a b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 f7 74 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 70 df ab c8 f7 7f 00 00 e8 ed 98 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1e 8a b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 f7 74 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 70 df ab c8 f7 7f 00 00 e8 ae 98 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 df 89 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 f7 74 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 70 df ab c8 f7 7f 00 00 e8 6f 98 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a0 89 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 f8 74 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 70 df ab c8 f7 7f 00 00 e8 33 98 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 89 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 f7 74 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 70 df ab c8 f7 7f 00 00 e8 f7 97 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 89 b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 a0 f8 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8abdf70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 df ab c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 9b b0 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 8c b0 5e}
004dh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c874eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 74 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8abdf70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 df ab c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 9b b0 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 8c b0 5e}
008ch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c874f8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f8 74 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8abdf70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 df ab c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 9b b0 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 8c b0 5e}
00cbh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c874f8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f8 74 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8abdf70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 df ab c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 9a b0 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 8c b0 5e}
010ah mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c874eb20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 eb 74 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8abdf70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 df ab c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 9a b0 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 8b b0 5e}
0149h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c874f800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f8 74 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8abdf70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 df ab c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 9a b0 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 8b b0 5e}
0188h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c874f7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f7 74 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8abdf70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 df ab c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 9a b0 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 8b b0 5e}
01c7h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c874f820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 f8 74 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8abdf70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 df ab c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 99 b0 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 8b b0 5e}
0206h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c874f7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f7 74 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8abdf70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 df ab c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 99 b0 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 8a b0 5e}
0245h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c874f880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 f8 74 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8abdf70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 df ab c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 99 b0 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 8a b0 5e}
0284h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c874f840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f8 74 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8abdf70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 df ab c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 99 b0 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 8a b0 5e}
02c3h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c874f760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f7 74 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8abdf70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 df ab c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 98 b0 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 8a b0 5e}
0302h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c874f7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f7 74 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8abdf70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 df ab c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 98 b0 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 89 b0 5e}
0341h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c874f780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 f7 74 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8abdf70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 df ab c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 98 b0 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 89 b0 5e}
0380h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c874f860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f8 74 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8abdf70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 df ab c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 98 b0 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 89 b0 5e}
03bch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c874f740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f7 74 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8abdf70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 df ab c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 97 b0 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 89 b0 5e}
03f8h mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c874f8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 f8 74 c8 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[74] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 60 db ab c8 f7 7f 00 00 e8 92 96 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
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
002fh mov rcx,7ff7c8abdb60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 db ab c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 96 b0 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ushort>> lookup<ushort>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 f8 3d ab c8 f7 7f 00 00 e8 82 91 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 82 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 fd 74 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 f8 3d ab c8 f7 7f 00 00 e8 43 91 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 82 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 fe 74 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 f8 3d ab c8 f7 7f 00 00 e8 04 91 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 82 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 fe 74 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 f8 3d ab c8 f7 7f 00 00 e8 c5 90 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 81 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 fd 74 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 f8 3d ab c8 f7 7f 00 00 e8 86 90 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 81 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 fe 74 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 f8 3d ab c8 f7 7f 00 00 e8 47 90 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 81 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 fe 74 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 f8 3d ab c8 f7 7f 00 00 e8 08 90 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 81 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 fe 74 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 f8 3d ab c8 f7 7f 00 00 e8 c9 8f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa 80 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 fe 74 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 f8 3d ab c8 f7 7f 00 00 e8 8a 8f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb 80 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 fe 74 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 f8 3d ab c8 f7 7f 00 00 e8 4b 8f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c 80 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 fe 74 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 f8 3d ab c8 f7 7f 00 00 e8 0c 8f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d 80 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 fe 74 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f8 3d ab c8 f7 7f 00 00 e8 cd 8e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe 7f b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 fe 74 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f8 3d ab c8 f7 7f 00 00 e8 8e 8e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf 7f b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 fe 74 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f8 3d ab c8 f7 7f 00 00 e8 4f 8e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 80 7f b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 fe 74 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f8 3d ab c8 f7 7f 00 00 e8 13 8e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 7f b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 fe 74 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f8 3d ab c8 f7 7f 00 00 e8 d7 8d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 7f b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 b8 fe 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8ab3df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3d ab c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 91 b0 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 82 b0 5e}
004dh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c874fde8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 fd 74 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8ab3df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3d ab c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 91 b0 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 82 b0 5e}
008ch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c874fed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 fe 74 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8ab3df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3d ab c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 91 b0 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 82 b0 5e}
00cbh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c874fec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fe 74 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8ab3df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3d ab c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 90 b0 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 81 b0 5e}
010ah mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c874fdf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 fd 74 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8ab3df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3d ab c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 90 b0 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 81 b0 5e}
0149h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c874fe68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 fe 74 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8ab3df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3d ab c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 90 b0 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 81 b0 5e}
0188h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c874fe58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fe 74 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8ab3df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3d ab c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 90 b0 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 81 b0 5e}
01c7h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c874fe78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 fe 74 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8ab3df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3d ab c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 8f b0 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 80 b0 5e}
0206h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c874fe48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 fe 74 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8ab3df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3d ab c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 8f b0 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 80 b0 5e}
0245h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c874fea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 fe 74 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8ab3df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3d ab c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 8f b0 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 80 b0 5e}
0284h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c874fe88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 fe 74 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8ab3df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3d ab c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 8f b0 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 80 b0 5e}
02c3h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c874fe18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 fe 74 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8ab3df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3d ab c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 8e b0 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 7f b0 5e}
0302h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c874fe38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 fe 74 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8ab3df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3d ab c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 8e b0 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 7f b0 5e}
0341h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c874fe28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 fe 74 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8ab3df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3d ab c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 8e b0 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 7f b0 5e}
0380h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c874fe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 fe 74 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8ab3df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3d ab c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 8e b0 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 7f b0 5e}
03bch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c874fe08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 fe 74 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8ab3df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3d ab c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 8d b0 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 7f b0 5e}
03f8h mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c874feb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 fe 74 c8 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 70 ab ab c8 f7 7f 00 00 e8 72 8c b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 7d b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 fe 74 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 70 ab ab c8 f7 7f 00 00 e8 33 8c b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 7d b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 ff 74 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 70 ab ab c8 f7 7f 00 00 e8 f4 8b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 7d b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 ff 74 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 70 ab ab c8 f7 7f 00 00 e8 b5 8b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 7c b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 ff 74 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 70 ab ab c8 f7 7f 00 00 e8 76 8b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 7c b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 ff 74 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 70 ab ab c8 f7 7f 00 00 e8 37 8b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 7c b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 ff 74 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 70 ab ab c8 f7 7f 00 00 e8 f8 8a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 7c b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 ff 74 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 70 ab ab c8 f7 7f 00 00 e8 b9 8a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea 7b b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 ff 74 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 70 ab ab c8 f7 7f 00 00 e8 7a 8a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab 7b b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 ff 74 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 70 ab ab c8 f7 7f 00 00 e8 3b 8a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c 7b b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 ff 74 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 70 ab ab c8 f7 7f 00 00 e8 fc 89 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d 7b b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 ff 74 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 70 ab ab c8 f7 7f 00 00 e8 bd 89 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee 7a b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 ff 74 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 70 ab ab c8 f7 7f 00 00 e8 7e 89 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 af 7a b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 ff 74 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 70 ab ab c8 f7 7f 00 00 e8 3f 89 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 70 7a b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 ff 74 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 70 ab ab c8 f7 7f 00 00 e8 03 89 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 7a b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 ff 74 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 70 ab ab c8 f7 7f 00 00 e8 c7 88 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 79 b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 c8 ff 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8abab70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ab ab c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 8c b0 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 7d b0 5e}
004dh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c874fef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 fe 74 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8abab70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ab ab c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 8c b0 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 7d b0 5e}
008ch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c874ffe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ff 74 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8abab70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ab ab c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 8b b0 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 7d b0 5e}
00cbh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c874ffd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ff 74 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8abab70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ab ab c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 8b b0 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 7c b0 5e}
010ah mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c874ff08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ff 74 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8abab70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ab ab c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 8b b0 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 7c b0 5e}
0149h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c874ff78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ff 74 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8abab70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ab ab c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 8b b0 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 7c b0 5e}
0188h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c874ff68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ff 74 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8abab70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ab ab c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 8a b0 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 7c b0 5e}
01c7h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c874ff88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ff 74 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8abab70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ab ab c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 8a b0 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 7b b0 5e}
0206h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c874ff58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 ff 74 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8abab70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ab ab c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 8a b0 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 7b b0 5e}
0245h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c874ffb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 ff 74 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8abab70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ab ab c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 8a b0 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 7b b0 5e}
0284h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c874ff98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ff 74 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8abab70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ab ab c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 89 b0 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 7b b0 5e}
02c3h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c874ff28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ff 74 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8abab70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ab ab c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 89 b0 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 7a b0 5e}
0302h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c874ff48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ff 74 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8abab70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ab ab c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 89 b0 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 7a b0 5e}
0341h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c874ff38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ff 74 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8abab70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ab ab c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 89 b0 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 7a b0 5e}
0380h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c874ffa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ff 74 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8abab70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ab ab c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 89 b0 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 7a b0 5e}
03bch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c874ff18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ff 74 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8abab70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ab ab c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 88 b0 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 79 b0 5e}
03f8h mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c874ffc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 ff 74 c8 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 d0 e8 ab c8 f7 7f 00 00 e8 62 87 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 78 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 00 75 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d0 e8 ab c8 f7 7f 00 00 e8 23 87 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 78 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 00 75 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d0 e8 ab c8 f7 7f 00 00 e8 e4 86 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 78 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 00 75 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d0 e8 ab c8 f7 7f 00 00 e8 a5 86 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 77 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 00 75 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d0 e8 ab c8 f7 7f 00 00 e8 66 86 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 77 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 00 75 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d0 e8 ab c8 f7 7f 00 00 e8 27 86 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 77 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 00 75 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d0 e8 ab c8 f7 7f 00 00 e8 e8 85 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 77 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 00 75 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d0 e8 ab c8 f7 7f 00 00 e8 a9 85 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 da 76 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 00 75 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d0 e8 ab c8 f7 7f 00 00 e8 6a 85 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b 76 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 00 75 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d0 e8 ab c8 f7 7f 00 00 e8 2b 85 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c 76 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 00 75 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d0 e8 ab c8 f7 7f 00 00 e8 ec 84 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d 76 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 00 75 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d0 e8 ab c8 f7 7f 00 00 e8 ad 84 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 de 75 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 00 75 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d0 e8 ab c8 f7 7f 00 00 e8 6e 84 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f 75 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 00 75 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d0 e8 ab c8 f7 7f 00 00 e8 2f 84 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 75 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 00 75 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d0 e8 ab c8 f7 7f 00 00 e8 f3 83 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 75 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 00 75 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d0 e8 ab c8 f7 7f 00 00 e8 b7 83 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 74 b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 d8 00 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8abe8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e8 ab c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 87 b0 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 78 b0 5e}
004dh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c8750008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 00 75 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8abe8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e8 ab c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 87 b0 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 78 b0 5e}
008ch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c87500f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 00 75 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8abe8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e8 ab c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 86 b0 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 78 b0 5e}
00cbh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c87500e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 00 75 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8abe8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e8 ab c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 86 b0 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 77 b0 5e}
010ah mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c8750018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 00 75 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8abe8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e8 ab c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 86 b0 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 77 b0 5e}
0149h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c8750088h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 00 75 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8abe8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e8 ab c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 86 b0 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 77 b0 5e}
0188h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c8750078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 00 75 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8abe8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e8 ab c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 85 b0 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 77 b0 5e}
01c7h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c8750098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 00 75 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8abe8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e8 ab c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 85 b0 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 76 b0 5e}
0206h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c8750068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 00 75 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8abe8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e8 ab c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 85 b0 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 76 b0 5e}
0245h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c87500c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 00 75 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8abe8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e8 ab c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 85 b0 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 76 b0 5e}
0284h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c87500a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 00 75 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8abe8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e8 ab c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 84 b0 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 76 b0 5e}
02c3h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c8750038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 00 75 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8abe8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e8 ab c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 84 b0 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 75 b0 5e}
0302h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c8750058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 00 75 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8abe8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e8 ab c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 84 b0 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 75 b0 5e}
0341h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c8750048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 75 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8abe8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e8 ab c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 84 b0 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 75 b0 5e}
0380h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c87500b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 00 75 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8abe8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e8 ab c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 83 b0 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 75 b0 5e}
03bch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c8750028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 00 75 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8abe8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e8 ab c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 83 b0 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 74 b0 5e}
03f8h mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c87500d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 00 75 c8 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 a0 e5 ab c8 f7 7f 00 00 e8 52 82 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 73 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 01 75 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a0 e5 ab c8 f7 7f 00 00 e8 13 82 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 73 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 0d 75 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a0 e5 ab c8 f7 7f 00 00 e8 d4 81 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 73 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 0d 75 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a0 e5 ab c8 f7 7f 00 00 e8 95 81 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 72 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 01 75 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a0 e5 ab c8 f7 7f 00 00 e8 56 81 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 72 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 01 75 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a0 e5 ab c8 f7 7f 00 00 e8 17 81 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 72 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 01 75 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a0 e5 ab c8 f7 7f 00 00 e8 d8 80 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 72 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 01 75 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a0 e5 ab c8 f7 7f 00 00 e8 99 80 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca 71 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 01 75 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a0 e5 ab c8 f7 7f 00 00 e8 5a 80 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b 71 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 0d 75 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a0 e5 ab c8 f7 7f 00 00 e8 1b 80 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c 71 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 0d 75 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a0 e5 ab c8 f7 7f 00 00 e8 dc 7f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d 71 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 01 75 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a0 e5 ab c8 f7 7f 00 00 e8 9d 7f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce 70 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 01 75 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a0 e5 ab c8 f7 7f 00 00 e8 5e 7f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f 70 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 01 75 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a0 e5 ab c8 f7 7f 00 00 e8 1f 7f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 70 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 0d 75 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a0 e5 ab c8 f7 7f 00 00 e8 e3 7e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 70 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 01 75 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a0 e5 ab c8 f7 7f 00 00 e8 a7 7e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 6f b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 a8 0d 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8abe5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e5 ab c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 82 b0 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 73 b0 5e}
004dh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c8750118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 01 75 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8abe5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e5 ab c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 82 b0 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 73 b0 5e}
008ch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c8750dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0d 75 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8abe5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e5 ab c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 81 b0 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 73 b0 5e}
00cbh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c8750db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 0d 75 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8abe5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e5 ab c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 81 b0 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 72 b0 5e}
010ah mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c8750128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 01 75 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8abe5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e5 ab c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 81 b0 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 72 b0 5e}
0149h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c8750198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 01 75 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8abe5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e5 ab c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 81 b0 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 72 b0 5e}
0188h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c8750188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 01 75 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8abe5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e5 ab c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 80 b0 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 72 b0 5e}
01c7h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c87501a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 01 75 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8abe5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e5 ab c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 80 b0 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 71 b0 5e}
0206h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c8750178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 01 75 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8abe5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e5 ab c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 80 b0 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 71 b0 5e}
0245h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c8750d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0d 75 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8abe5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e5 ab c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 80 b0 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 71 b0 5e}
0284h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c8750d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 0d 75 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8abe5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e5 ab c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 7f b0 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 71 b0 5e}
02c3h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c8750148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 01 75 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8abe5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e5 ab c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 7f b0 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 70 b0 5e}
0302h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c8750168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 01 75 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8abe5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e5 ab c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 7f b0 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 70 b0 5e}
0341h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c8750158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 01 75 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8abe5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e5 ab c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 7f b0 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 70 b0 5e}
0380h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c8750d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0d 75 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8abe5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e5 ab c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 7e b0 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 70 b0 5e}
03bch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c8750138h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 01 75 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8abe5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e5 ab c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 7e b0 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 6f b0 5e}
03f8h mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c8750da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 0d 75 c8 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 30 ef ab c8 f7 7f 00 00 e8 42 7d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 6e b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 0d 75 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 30 ef ab c8 f7 7f 00 00 e8 03 7d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 6e b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 0e 75 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 30 ef ab c8 f7 7f 00 00 e8 c4 7c b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 6d b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 0e 75 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 30 ef ab c8 f7 7f 00 00 e8 85 7c b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 6d b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 0d 75 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 30 ef ab c8 f7 7f 00 00 e8 46 7c b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 6d b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 0e 75 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 30 ef ab c8 f7 7f 00 00 e8 07 7c b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 6d b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 0e 75 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 30 ef ab c8 f7 7f 00 00 e8 c8 7b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 6c b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 0e 75 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 30 ef ab c8 f7 7f 00 00 e8 89 7b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba 6c b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 0e 75 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 30 ef ab c8 f7 7f 00 00 e8 4a 7b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b 6c b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 0e 75 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 30 ef ab c8 f7 7f 00 00 e8 0b 7b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c 6c b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 0e 75 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 30 ef ab c8 f7 7f 00 00 e8 cc 7a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd 6b b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 0e 75 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 30 ef ab c8 f7 7f 00 00 e8 8d 7a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be 6b b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 0e 75 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 30 ef ab c8 f7 7f 00 00 e8 4e 7a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f 6b b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 0e 75 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 30 ef ab c8 f7 7f 00 00 e8 0f 7a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 6b b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 0e 75 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 30 ef ab c8 f7 7f 00 00 e8 d3 79 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 6b b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 0e 75 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 30 ef ab c8 f7 7f 00 00 e8 97 79 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 6a b0 5e 48 b8 f0 e1 63 c7 f7 7f 00 00 48 89 46 18 48 b8 b8 0e 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8abef30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ef ab c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 7d b0 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 6e b0 5e}
004dh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c8750de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 0d 75 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8abef30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ef ab c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 7d b0 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 6e b0 5e}
008ch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c8750ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 0e 75 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8abef30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ef ab c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 7c b0 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 6d b0 5e}
00cbh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c8750ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0e 75 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8abef30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ef ab c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 7c b0 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 6d b0 5e}
010ah mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c8750df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 0d 75 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8abef30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ef ab c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 7c b0 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 6d b0 5e}
0149h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c8750e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 0e 75 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8abef30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ef ab c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 7c b0 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 6d b0 5e}
0188h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c8750e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0e 75 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8abef30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ef ab c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 7b b0 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 6c b0 5e}
01c7h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c8750e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 0e 75 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8abef30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ef ab c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 7b b0 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 6c b0 5e}
0206h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c8750e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 0e 75 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8abef30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ef ab c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 7b b0 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 6c b0 5e}
0245h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c8750ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0e 75 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8abef30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ef ab c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 7b b0 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 6c b0 5e}
0284h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c8750e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0e 75 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8abef30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ef ab c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 7a b0 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 6b b0 5e}
02c3h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c8750e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 0e 75 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8abef30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ef ab c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 7a b0 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 6b b0 5e}
0302h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c8750e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 0e 75 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8abef30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ef ab c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 7a b0 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 6b b0 5e}
0341h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c8750e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 0e 75 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8abef30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ef ab c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 7a b0 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 6b b0 5e}
0380h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c8750e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0e 75 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8abef30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ef ab c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 79 b0 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 6b b0 5e}
03bch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c8750e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 0e 75 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8abef30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ef ab c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 79 b0 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 6a b0 5e}
03f8h mov rax,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 63 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c8750eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 0e 75 c8 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[938] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 00 ec ab c8 f7 7f 00 00 e8 32 78 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 69 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 0e 75 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 00 ec ab c8 f7 7f 00 00 e8 f3 77 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 69 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 0f 75 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 00 ec ab c8 f7 7f 00 00 e8 b4 77 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 68 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 0f 75 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 00 ec ab c8 f7 7f 00 00 e8 75 77 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 68 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 0f 75 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 00 ec ab c8 f7 7f 00 00 e8 36 77 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 68 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 0f 75 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 00 ec ab c8 f7 7f 00 00 e8 f7 76 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 68 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 0f 75 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 00 ec ab c8 f7 7f 00 00 e8 b8 76 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 67 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 0f 75 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 00 ec ab c8 f7 7f 00 00 e8 79 76 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa 67 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 0f 75 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 00 ec ab c8 f7 7f 00 00 e8 3a 76 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b 67 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 0f 75 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 00 ec ab c8 f7 7f 00 00 e8 fb 75 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 67 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 0f 75 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 00 ec ab c8 f7 7f 00 00 e8 bc 75 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed 66 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 0f 75 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 00 ec ab c8 f7 7f 00 00 e8 7d 75 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae 66 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 0f 75 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 00 ec ab c8 f7 7f 00 00 e8 3e 75 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f 66 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 0f 75 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 00 ec ab c8 f7 7f 00 00 e8 ff 74 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 66 b0 5e 48 b9 f0 e1 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 0f 75 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 00 ec ab c8 f7 7f 00 00 e8 c3}
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
002fh mov rcx,7ff7c8abec00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ec ab c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 78 b0 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 69 b0 5e}
004dh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c8750ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 0e 75 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8abec00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ec ab c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 77 b0 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 69 b0 5e}
008ch mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c8750fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 0f 75 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8abec00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ec ab c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 77 b0 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 68 b0 5e}
00cbh mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c8750fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 0f 75 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8abec00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ec ab c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 77 b0 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 68 b0 5e}
010ah mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c8750f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 0f 75 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8abec00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ec ab c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 77 b0 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 68 b0 5e}
0149h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c8750f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 0f 75 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8abec00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ec ab c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 76 b0 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 68 b0 5e}
0188h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c8750f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 0f 75 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8abec00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ec ab c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 76 b0 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 67 b0 5e}
01c7h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c8750f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0f 75 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8abec00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ec ab c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 76 b0 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 67 b0 5e}
0206h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c8750f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0f 75 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8abec00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ec ab c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 76 b0 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 67 b0 5e}
0245h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c8750fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 0f 75 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8abec00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ec ab c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 75 b0 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 67 b0 5e}
0284h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c8750f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0f 75 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8abec00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ec ab c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 75 b0 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 66 b0 5e}
02c3h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c8750f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 0f 75 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8abec00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ec ab c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 75 b0 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 66 b0 5e}
0302h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c8750f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 0f 75 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8abec00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ec ab c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 75 b0 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 66 b0 5e}
0341h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c8750f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 0f 75 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8abec00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ec ab c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 74 b0 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 66 b0 5e}
0380h mov rcx,7ff7c763e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 63 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c8750fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0f 75 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8abec00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ec ab c8 f7 7f 00 00}
03a8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<byte>> lookup<byte>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a8 0b ce c8 f7 7f 00 00 e8 20 6f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 51 60 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 fc 75 c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 e1 6e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 60 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 fc 75 c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 a2 6e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 5f b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 fb 75 c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 63 6e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 5f b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 fb 75 c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 24 6e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 5f b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 fb 75 c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 e5 6d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 16 5f b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 fb 75 c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 a6 6d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d7 5e b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 fb 75 c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 67 6d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 5e b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 fb 75 c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 28 6d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 5e b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 fb 75 c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 e9 6c b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1a 5e b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 fb 75 c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 aa 6c b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db 5d b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 fa 75 c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 6b 6c b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c 5d b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 fa 75 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 2c 6c b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d 5d b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 fa 75 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 ed 6b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1e 5d b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 fa 75 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 ae 6b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 df 5c b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 fa 75 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 6f 6b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a0 5c b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 fa 75 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 30 6b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 5c b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 fa 75 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 f1 6a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 5c b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 fa 75 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 b2 6a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 5b b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 f9 75 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 73 6a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 5b b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 f9 75 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 34 6a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 5b b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 f9 75 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 f5 69 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 5b b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 f9 75 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 b6 69 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 5a b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 f9 75 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 77 69 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 5a b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 f9 75 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a8 0b ce c8 f7 7f 00 00 e8 38 69 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 5a b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 a8 75 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a8 0b ce c8 f7 7f 00 00 e8 fc 68 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d 5a b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 a8 75 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a8 0b ce c8 f7 7f 00 00 e8 c0 68 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 59 b0 5e 48 b8 40 ea 63 c7 f7 7f 00 00 48 89 46 18 48 b8 e8 a7 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 6f b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 60 b0 5e}
004fh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c875fc28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 fc 75 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 6e b0 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 60 b0 5e}
008eh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c875fc08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 fc 75 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 6e b0 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 5f b0 5e}
00cdh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c875fbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 fb 75 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 6e b0 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 5f b0 5e}
010ch mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c875fbc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fb 75 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 6e b0 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 5f b0 5e}
014bh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c875fba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 fb 75 c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 6d b0 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 5f b0 5e}
018ah mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c875fb88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 fb 75 c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 6d b0 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 5e b0 5e}
01c9h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c875fb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 fb 75 c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 6d b0 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 5e b0 5e}
0208h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c875fb48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 fb 75 c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 6d b0 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 5e b0 5e}
0247h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c875fb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 fb 75 c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 6c b0 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 5e b0 5e}
0286h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c875fb08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 fb 75 c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 6c b0 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 5d b0 5e}
02c5h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c875fae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 fa 75 c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 6c b0 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 5d b0 5e}
0304h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c875fac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fa 75 c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 6c b0 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 5d b0 5e}
0343h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c875faa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 fa 75 c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 6b b0 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 5d b0 5e}
0382h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c875fa88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 fa 75 c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 6b b0 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 5c b0 5e}
03c1h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c875fa68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 fa 75 c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 6b b0 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 5c b0 5e}
0400h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c875fa48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 fa 75 c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 6b b0 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 5c b0 5e}
043fh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c875fa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 fa 75 c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 6a b0 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 5c b0 5e}
047eh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c875fa08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 fa 75 c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 6a b0 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 5b b0 5e}
04bdh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c875f9e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f9 75 c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 6a b0 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 5b b0 5e}
04fch mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c875f9c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f9 75 c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 6a b0 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 5b b0 5e}
053bh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c875f9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f9 75 c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 69 b0 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 5b b0 5e}
057ah mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c875f988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 f9 75 c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 69 b0 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 5a b0 5e}
05b9h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c875f968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 f9 75 c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 69 b0 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 5a b0 5e}
05f8h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c875f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 75 c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 69 b0 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 5a b0 5e}
0637h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c875a828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 a8 75 c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 68 b0 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 5a b0 5e}
0673h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c875a808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 a8 75 c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8ce0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b ce c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 68 b0 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 59 b0 5e}
06afh mov rax,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 ea 63 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c875a7e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 a7 75 c8 f7 7f 00 00}
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
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c8 0f ce c8 f7 7f 00 00 e8 30 63 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 54 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 05 76 c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 f1 62 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 54 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 05 76 c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 b2 62 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 53 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 05 76 c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 73 62 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 53 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 05 76 c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 34 62 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 53 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 05 76 c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 f5 61 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 53 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 05 76 c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 b6 61 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 52 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 05 76 c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 77 61 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 52 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 05 76 c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 38 61 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 52 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 05 76 c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 f9 60 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2a 52 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 05 76 c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 ba 60 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb 51 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 05 76 c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 7b 60 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac 51 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 fd 75 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 3c 60 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d 51 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 fd 75 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 fd 5f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2e 51 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 fd 75 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 be 5f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ef 50 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 fd 75 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 7f 5f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b0 50 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 fc 75 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 40 5f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 50 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 fc 75 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 01 5f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 50 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 fc 75 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 c2 5e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 4f b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 fc 75 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 83 5e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 4f b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 fc 75 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 44 5e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 4f b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 fc 75 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 05 5e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 4f b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 fc 75 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 c6 5d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 4e b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 fc 75 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 87 5d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 4e b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 fc 75 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c8 0f ce c8 f7 7f 00 00 e8 48 5d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 4e b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 fc 75 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c8 0f ce c8 f7 7f 00 00 e8 0c 5d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d 4e b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 fc 75 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c8 0f ce c8 f7 7f 00 00 e8 d0 5c b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 4e b0 5e 48 b8 40 ea 63 c7 f7 7f 00 00 48 89 46 18 48 b8 48 fc 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 63 b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 54 b0 5e}
004fh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c87605d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 05 76 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 62 b0 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 54 b0 5e}
008eh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c87605c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 05 76 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 62 b0 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 53 b0 5e}
00cdh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c87605b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 05 76 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 62 b0 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 53 b0 5e}
010ch mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c87605a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 05 76 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 62 b0 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 53 b0 5e}
014bh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c8760598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 05 76 c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 61 b0 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 53 b0 5e}
018ah mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c8760588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 05 76 c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 61 b0 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 52 b0 5e}
01c9h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c8760578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 05 76 c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 61 b0 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 52 b0 5e}
0208h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c8760568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 05 76 c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 61 b0 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 52 b0 5e}
0247h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c8760558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 05 76 c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 60 b0 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 52 b0 5e}
0286h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c8760548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 05 76 c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 60 b0 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 51 b0 5e}
02c5h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c8760538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 05 76 c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 60 b0 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 51 b0 5e}
0304h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c875fd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 fd 75 c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 60 b0 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 51 b0 5e}
0343h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c875fd28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 fd 75 c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 5f b0 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 51 b0 5e}
0382h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c875fd18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 fd 75 c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 5f b0 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 50 b0 5e}
03c1h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c875fd08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 fd 75 c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 5f b0 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 50 b0 5e}
0400h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c875fcf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 fc 75 c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 5f b0 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 50 b0 5e}
043fh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c875fce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 fc 75 c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 5f b0 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 50 b0 5e}
047eh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c875fcd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 fc 75 c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 5e b0 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 4f b0 5e}
04bdh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c875fcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fc 75 c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 5e b0 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 4f b0 5e}
04fch mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c875fcb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fc 75 c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 5e b0 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 4f b0 5e}
053bh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c875fca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 fc 75 c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 5e b0 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 4f b0 5e}
057ah mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c875fc98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 fc 75 c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 5d b0 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 4e b0 5e}
05b9h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c875fc88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 fc 75 c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 5d b0 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 4e b0 5e}
05f8h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c875fc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 fc 75 c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 5d b0 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 4e b0 5e}
0637h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c875fc68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 fc 75 c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 5d b0 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 4e b0 5e}
0673h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c875fc58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fc 75 c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8ce0fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0f ce c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 5c b0 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 4e b0 5e}
06afh mov rax,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 ea 63 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c875fc48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 fc 75 c8 f7 7f 00 00}
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
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 38 12 ce c8 f7 7f 00 00 e8 40 5b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 4c b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 07 76 c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 01 5b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 4c b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 07 76 c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 c2 5a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 4b b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 07 76 c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 83 5a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 4b b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 07 76 c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 44 5a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 4b b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 07 76 c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 05 5a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 4b b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 07 76 c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 c6 59 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 4a b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 07 76 c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 87 59 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 4a b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 07 76 c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 48 59 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 4a b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 07 76 c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 09 59 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3a 4a b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 06 76 c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 ca 58 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb 49 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 06 76 c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 8b 58 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc 49 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 06 76 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 4c 58 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7d 49 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 06 76 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 0d 58 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3e 49 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 06 76 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 ce 57 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ff 48 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 06 76 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 8f 57 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c0 48 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 06 76 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 50 57 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 48 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 06 76 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 11 57 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 48 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 06 76 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 d2 56 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 48 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 06 76 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 93 56 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 47 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 06 76 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 54 56 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 47 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 06 76 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 15 56 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 47 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 06 76 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 d6 55 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 47 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 06 76 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 97 55 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 46 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 06 76 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 38 12 ce c8 f7 7f 00 00 e8 58 55 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 46 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 06 76 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 38 12 ce c8 f7 7f 00 00 e8 1c 55 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4d 46 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 05 76 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 38 12 ce c8 f7 7f 00 00 e8 e0 54 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 46 b0 5e 48 b8 40 ea 63 c7 f7 7f 00 00 48 89 46 18 48 b8 e8 05 76 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 5b b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 4c b0 5e}
004fh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c8760788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 07 76 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 5b b0 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 4c b0 5e}
008eh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c8760778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 07 76 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 5a b0 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 4b b0 5e}
00cdh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c8760768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 07 76 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 5a b0 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 4b b0 5e}
010ch mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c8760758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 07 76 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 5a b0 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 4b b0 5e}
014bh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c8760748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 07 76 c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 5a b0 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 4b b0 5e}
018ah mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c8760738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 07 76 c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 59 b0 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 4a b0 5e}
01c9h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c8760728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 07 76 c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 59 b0 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 4a b0 5e}
0208h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c8760718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 07 76 c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 59 b0 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 4a b0 5e}
0247h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c8760708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 07 76 c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 59 b0 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 4a b0 5e}
0286h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c87606f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 06 76 c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 58 b0 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 49 b0 5e}
02c5h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c87606e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 06 76 c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 58 b0 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 49 b0 5e}
0304h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c87606d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 06 76 c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 58 b0 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 49 b0 5e}
0343h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c87606c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 06 76 c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 58 b0 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 49 b0 5e}
0382h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c87606b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 06 76 c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 57 b0 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 48 b0 5e}
03c1h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c87606a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 06 76 c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 57 b0 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 48 b0 5e}
0400h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c8760698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 06 76 c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 57 b0 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 48 b0 5e}
043fh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c8760688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 06 76 c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 57 b0 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 48 b0 5e}
047eh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c8760678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 06 76 c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 56 b0 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 48 b0 5e}
04bdh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c8760668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 06 76 c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 56 b0 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 47 b0 5e}
04fch mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c8760658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 06 76 c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 56 b0 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 47 b0 5e}
053bh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c8760648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 06 76 c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 56 b0 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 47 b0 5e}
057ah mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c8760638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 06 76 c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 55 b0 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 47 b0 5e}
05b9h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c8760628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 06 76 c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 55 b0 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 46 b0 5e}
05f8h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c8760618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 06 76 c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 55 b0 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 46 b0 5e}
0637h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c8760608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 06 76 c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 55 b0 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 46 b0 5e}
0673h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c87605f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 05 76 c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8ce1238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 12 ce c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 54 b0 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 46 b0 5e}
06afh mov rax,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 ea 63 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c87605e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 05 76 c8 f7 7f 00 00}
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
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a8 14 ce c8 f7 7f 00 00 e8 50 4f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 40 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 19 76 c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 11 4f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 40 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 09 76 c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 d2 4e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 40 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 09 76 c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 93 4e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 3f b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 09 76 c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 54 4e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 3f b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 08 76 c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 15 4e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 3f b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 08 76 c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 d6 4d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 3f b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 08 76 c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 97 4d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 3e b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 08 76 c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 58 4d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 3e b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 08 76 c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 19 4d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 3e b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 08 76 c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 da 4c b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 3e b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 08 76 c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 9b 4c b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 3d b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 08 76 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 5c 4c b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 3d b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 08 76 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 1d 4c b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 3d b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 08 76 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 de 4b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 3d b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 08 76 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 9f 4b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 3c b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 08 76 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 60 4b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 3c b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 08 76 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 21 4b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 3c b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 08 76 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 e2 4a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 3c b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 08 76 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 a3 4a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 3b b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 08 76 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 64 4a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 3b b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 07 76 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 25 4a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 3b b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 07 76 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 e6 49 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 3b b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 07 76 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 a7 49 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 3a b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 07 76 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a8 14 ce c8 f7 7f 00 00 e8 68 49 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 3a b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 07 76 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a8 14 ce c8 f7 7f 00 00 e8 2c 49 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d 3a b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 07 76 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a8 14 ce c8 f7 7f 00 00 e8 f0 48 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 3a b0 5e 48 b8 40 ea 63 c7 f7 7f 00 00 48 89 46 18 48 b8 98 07 76 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 4f b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 40 b0 5e}
004fh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c8761918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 19 76 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 4f b0 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 40 b0 5e}
008eh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c8760928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 09 76 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 4e b0 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 40 b0 5e}
00cdh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c8760918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 09 76 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 4e b0 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 3f b0 5e}
010ch mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c8760908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 09 76 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 4e b0 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 3f b0 5e}
014bh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c87608f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 08 76 c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 4e b0 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 3f b0 5e}
018ah mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c87608e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 08 76 c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 4d b0 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 3f b0 5e}
01c9h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c87608d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 08 76 c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 4d b0 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 3e b0 5e}
0208h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c87608c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 08 76 c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 4d b0 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 3e b0 5e}
0247h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c87608b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 08 76 c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 4d b0 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 3e b0 5e}
0286h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c87608a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 08 76 c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 4c b0 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 3e b0 5e}
02c5h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c8760898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 08 76 c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 4c b0 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 3d b0 5e}
0304h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c8760888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 08 76 c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 4c b0 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 3d b0 5e}
0343h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c8760878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 08 76 c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 4c b0 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 3d b0 5e}
0382h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c8760868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 08 76 c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 4b b0 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 3d b0 5e}
03c1h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c8760858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 08 76 c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 4b b0 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 3c b0 5e}
0400h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c8760848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 08 76 c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 4b b0 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 3c b0 5e}
043fh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c8760838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 08 76 c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 4b b0 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 3c b0 5e}
047eh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c8760828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 08 76 c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 4a b0 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 3c b0 5e}
04bdh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c8760818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 08 76 c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 4a b0 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 3b b0 5e}
04fch mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c8760808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 08 76 c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 4a b0 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 3b b0 5e}
053bh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c87607f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 07 76 c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 4a b0 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 3b b0 5e}
057ah mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c87607e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 07 76 c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 49 b0 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 3b b0 5e}
05b9h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c87607d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 07 76 c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 49 b0 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 3a b0 5e}
05f8h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c87607c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 07 76 c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 49 b0 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 3a b0 5e}
0637h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c87607b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 07 76 c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 49 b0 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 3a b0 5e}
0673h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c87607a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 07 76 c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8ce14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 ce c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 48 b0 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 3a b0 5e}
06afh mov rax,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 ea 63 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c8760798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 07 76 c8 f7 7f 00 00}
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
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 18 17 ce c8 f7 7f 00 00 e8 60 47 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 38 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 1a 76 c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 21 47 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 38 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 1a 76 c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 e2 46 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 38 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 1a 76 c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 a3 46 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 37 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 1a 76 c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 64 46 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 37 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 1a 76 c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 25 46 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 37 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 1a 76 c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 e6 45 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 37 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 1a 76 c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 a7 45 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 36 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 1a 76 c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 68 45 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 36 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 1a 76 c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 29 45 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a 36 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 1a 76 c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 ea 44 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b 36 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 1a 76 c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 ab 44 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dc 35 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 1a 76 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 6c 44 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d 35 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 1a 76 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 2d 44 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5e 35 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 19 76 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 ee 43 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1f 35 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 19 76 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 af 43 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e0 34 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 19 76 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 70 43 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 34 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 19 76 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 31 43 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 34 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 19 76 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 f2 42 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 34 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 19 76 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 b3 42 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 33 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 19 76 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 74 42 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 33 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 19 76 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 35 42 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 66 33 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 19 76 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 f6 41 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 27 33 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 19 76 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 b7 41 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 32 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 19 76 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 18 17 ce c8 f7 7f 00 00 e8 78 41 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 32 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 19 76 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 18 17 ce c8 f7 7f 00 00 e8 3c 41 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d 32 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 19 76 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 18 17 ce c8 f7 7f 00 00 e8 00 41 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 32 b0 5e 48 b8 40 ea 63 c7 f7 7f 00 00 48 89 46 18 48 b8 28 19 76 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 47 b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 38 b0 5e}
004fh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c8761ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1a 76 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 47 b0 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 38 b0 5e}
008eh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c8761ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1a 76 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 46 b0 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 38 b0 5e}
00cdh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c8761aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1a 76 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 46 b0 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 37 b0 5e}
010ch mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c8761a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1a 76 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 46 b0 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 37 b0 5e}
014bh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c8761a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 1a 76 c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 46 b0 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 37 b0 5e}
018ah mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c8761a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1a 76 c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 45 b0 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 37 b0 5e}
01c9h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c8761a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1a 76 c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 45 b0 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 36 b0 5e}
0208h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c8761a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 1a 76 c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 45 b0 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 36 b0 5e}
0247h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c8761a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1a 76 c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 45 b0 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 36 b0 5e}
0286h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c8761a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 1a 76 c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 44 b0 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 36 b0 5e}
02c5h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c8761a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 1a 76 c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 44 b0 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 35 b0 5e}
0304h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c8761a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 1a 76 c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 44 b0 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 35 b0 5e}
0343h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c8761a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 1a 76 c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 44 b0 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 35 b0 5e}
0382h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c87619f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 19 76 c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 43 b0 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 35 b0 5e}
03c1h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c87619e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 19 76 c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 43 b0 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 34 b0 5e}
0400h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c87619d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 19 76 c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 43 b0 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 34 b0 5e}
043fh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c87619c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 19 76 c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 43 b0 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 34 b0 5e}
047eh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c87619b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 19 76 c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 42 b0 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 34 b0 5e}
04bdh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c87619a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 19 76 c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 42 b0 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 33 b0 5e}
04fch mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c8761998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 19 76 c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 42 b0 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 33 b0 5e}
053bh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c8761988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 19 76 c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 42 b0 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 33 b0 5e}
057ah mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c8761978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 19 76 c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 41 b0 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 33 b0 5e}
05b9h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c8761968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 19 76 c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 41 b0 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 32 b0 5e}
05f8h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c8761958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 19 76 c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 41 b0 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 32 b0 5e}
0637h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c8761948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 19 76 c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 41 b0 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 32 b0 5e}
0673h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c8761938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 19 76 c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8ce1718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 17 ce c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 41 b0 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 32 b0 5e}
06afh mov rax,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 ea 63 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c8761928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 19 76 c8 f7 7f 00 00}
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
; lookup_gn256_TernaryBitLogicKind~8u[1258] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 88 19 ce c8 f7 7f 00 00 e8 70 3f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 30 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 1c 76 c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 88 19 ce c8 f7 7f 00 00 e8 31 3f b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 30 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 1c 76 c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 88 19 ce c8 f7 7f 00 00 e8 f2 3e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 30 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 1c 76 c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 88 19 ce c8 f7 7f 00 00 e8 b3 3e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 2f b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 1c 76 c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 88 19 ce c8 f7 7f 00 00 e8 74 3e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 2f b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 1c 76 c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 88 19 ce c8 f7 7f 00 00 e8 35 3e b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 66 2f b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 1c 76 c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 88 19 ce c8 f7 7f 00 00 e8 f6 3d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 27 2f b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 1c 76 c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 88 19 ce c8 f7 7f 00 00 e8 b7 3d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 2e b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 1c 76 c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 88 19 ce c8 f7 7f 00 00 e8 78 3d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 2e b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 1b 76 c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 88 19 ce c8 f7 7f 00 00 e8 39 3d b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6a 2e b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 1b 76 c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 88 19 ce c8 f7 7f 00 00 e8 fa 3c b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2b 2e b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 1b 76 c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 88 19 ce c8 f7 7f 00 00 e8 bb 3c b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec 2d b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 1b 76 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 88 19 ce c8 f7 7f 00 00 e8 7c 3c b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad 2d b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 1b 76 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 88 19 ce c8 f7 7f 00 00 e8 3d 3c b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6e 2d b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 1b 76 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 88 19 ce c8 f7 7f 00 00 e8 fe 3b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2f 2d b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 1b 76 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 88 19 ce c8 f7 7f 00 00 e8 bf 3b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f0 2c b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 1b 76 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 88 19 ce c8 f7 7f 00 00 e8 80 3b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 2c b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 1b 76 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 88 19 ce c8 f7 7f 00 00 e8 41 3b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 2c b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 1b 76 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 88 19 ce c8 f7 7f 00 00 e8 02 3b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 2c b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 1b 76 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 88 19 ce c8 f7 7f 00 00 e8 c3}
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
0031h mov rcx,7ff7c8ce1988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 19 ce c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 3f b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 30 b0 5e}
004fh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c8761c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1c 76 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8ce1988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 19 ce c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 3f b0 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 30 b0 5e}
008eh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c8761c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1c 76 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8ce1988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 19 ce c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 3e b0 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 30 b0 5e}
00cdh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c8761c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 1c 76 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8ce1988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 19 ce c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 3e b0 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 2f b0 5e}
010ch mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c8761c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1c 76 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8ce1988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 19 ce c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 3e b0 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 2f b0 5e}
014bh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c8761c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 1c 76 c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8ce1988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 19 ce c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 3e b0 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 2f b0 5e}
018ah mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c8761c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 1c 76 c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8ce1988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 19 ce c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 3d b0 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 2f b0 5e}
01c9h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c8761c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 1c 76 c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8ce1988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 19 ce c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 3d b0 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 2e b0 5e}
0208h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c8761c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 1c 76 c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8ce1988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 19 ce c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 3d b0 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 2e b0 5e}
0247h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c8761bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1b 76 c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8ce1988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 19 ce c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 3d b0 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 2e b0 5e}
0286h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c8761be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1b 76 c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8ce1988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 19 ce c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 3c b0 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 2e b0 5e}
02c5h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c8761bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1b 76 c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8ce1988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 19 ce c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 3c b0 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 2d b0 5e}
0304h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c8761bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1b 76 c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8ce1988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 19 ce c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 3c b0 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 2d b0 5e}
0343h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c8761bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1b 76 c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8ce1988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 19 ce c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 3c b0 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 2d b0 5e}
0382h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c8761ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 76 c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8ce1988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 19 ce c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 3b b0 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 2d b0 5e}
03c1h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c8761b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1b 76 c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8ce1988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 19 ce c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 3b b0 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 2c b0 5e}
0400h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c8761b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 1b 76 c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8ce1988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 19 ce c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 3b b0 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 2c b0 5e}
043fh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c8761b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1b 76 c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8ce1988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 19 ce c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 3b b0 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 2c b0 5e}
047eh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c8761b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1b 76 c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8ce1988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 19 ce c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 3b b0 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 2c b0 5e}
04bdh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c8761b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 1b 76 c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8ce1988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 19 ce c8 f7 7f 00 00}
04e8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<ulong>> lookup<ulong>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_TernaryBitLogicKind~8u[250] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f8 1b ce c8 f7 7f 00 00 e8 80 33 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 24 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 35 76 c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 f8 1b ce c8 f7 7f 00 00 e8 41 33 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 24 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 35 76 c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 f8 1b ce c8 f7 7f 00 00 e8 02 33 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 24 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 35 76 c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 f8 1b ce c8 f7 7f 00 00 e8 c3}
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
0031h mov rcx,7ff7c8ce1bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1b ce c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 33 b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 24 b0 5e}
004fh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c87635f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 35 76 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8ce1bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1b ce c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 33 b0 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 24 b0 5e}
008eh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c87635e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 35 76 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8ce1bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1b ce c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 33 b0 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 24 b0 5e}
00cdh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c87635d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 35 76 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8ce1bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1b ce c8 f7 7f 00 00}
00f8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<long>> lookup<long>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 68 1e ce c8 f7 7f 00 00 e8 90 2b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 1c b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 37 76 c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 51 2b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 1c b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 37 76 c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 12 2b b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 1c b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 37 76 c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 d3 2a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 1c b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 37 76 c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 94 2a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 1b b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 37 76 c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 55 2a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 86 1b b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 37 76 c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 16 2a b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 47 1b b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 37 76 c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 d7 29 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 1b b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 37 76 c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 98 29 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 1a b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 37 76 c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 59 29 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8a 1a b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 37 76 c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 1a 29 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b 1a b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 37 76 c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 db 28 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c 1a b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 36 76 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 9c 28 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd 19 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 36 76 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 5d 28 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8e 19 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 36 76 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 1e 28 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4f 19 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 36 76 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 df 27 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 10 19 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 36 76 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 a0 27 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 18 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 36 76 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 61 27 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 18 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 36 76 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 22 27 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 18 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 36 76 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 e3 26 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 18 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 36 76 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 a4 26 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 17 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 36 76 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 65 26 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 17 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 36 76 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 26 26 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 17 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 36 76 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 e7 25 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 17 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 36 76 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 68 1e ce c8 f7 7f 00 00 e8 a8 25 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 16 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 36 76 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 68 1e ce c8 f7 7f 00 00 e8 6c 25 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d 16 b0 5e 48 b9 40 ea 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 36 76 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 68 1e ce c8 f7 7f 00 00 e8 30 25 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 16 b0 5e 48 b8 40 ea 63 c7 f7 7f 00 00 48 89 46 18 48 b8 08 36 76 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 2b b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 1c b0 5e}
004fh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c87637a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 37 76 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 2b b0 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 1c b0 5e}
008eh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c8763798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 37 76 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 2b b0 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 1c b0 5e}
00cdh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c8763788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 37 76 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 2a b0 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 1c b0 5e}
010ch mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c8763778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 37 76 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 2a b0 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 1b b0 5e}
014bh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c8763768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 37 76 c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 2a b0 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 1b b0 5e}
018ah mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c8763758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 37 76 c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 2a b0 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 1b b0 5e}
01c9h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c8763748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 37 76 c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 29 b0 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 1b b0 5e}
0208h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c8763738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 37 76 c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 29 b0 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 1a b0 5e}
0247h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c8763728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 37 76 c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 29 b0 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 1a b0 5e}
0286h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c8763718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 37 76 c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 29 b0 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 1a b0 5e}
02c5h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c8763708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 37 76 c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 28 b0 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 1a b0 5e}
0304h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c87636f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 36 76 c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 28 b0 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 19 b0 5e}
0343h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c87636e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 36 76 c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 28 b0 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 19 b0 5e}
0382h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c87636d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 36 76 c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 28 b0 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 19 b0 5e}
03c1h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c87636c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 36 76 c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 27 b0 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 19 b0 5e}
0400h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c87636b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 36 76 c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 27 b0 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 18 b0 5e}
043fh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c87636a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 36 76 c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 27 b0 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 18 b0 5e}
047eh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c8763698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 36 76 c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 27 b0 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 18 b0 5e}
04bdh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c8763688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 36 76 c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 26 b0 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 18 b0 5e}
04fch mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c8763678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 36 76 c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 26 b0 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 17 b0 5e}
053bh mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c8763668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 36 76 c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 26 b0 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 17 b0 5e}
057ah mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c8763658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 36 76 c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 26 b0 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 17 b0 5e}
05b9h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c8763648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 36 76 c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 25 b0 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 17 b0 5e}
05f8h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c8763638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 36 76 c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 25 b0 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 16 b0 5e}
0637h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c8763628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 36 76 c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 25 b0 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 16 b0 5e}
0673h mov rcx,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 63 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c8763618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 36 76 c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8ce1e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1e ce c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 25 b0 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 16 b0 5e}
06afh mov rax,7ff7c763ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 ea 63 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c8763608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 36 76 c8 f7 7f 00 00}
06c7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06ceh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
06d2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
06d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d6h ret                                     ; RET || C3 || encoded[1]{c3}
