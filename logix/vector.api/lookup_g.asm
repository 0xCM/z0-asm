------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<byte>> lookup<byte>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 00 85 0d c8 f7 7f 00 00 e8 07 ab 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 9c 22 5f 48 b8 a0 e3 62 c7 f7 7f 00 00 48 89 46 18 48 b8 70 5e ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c80d8500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 85 0d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 ab 22 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 9c 22 5f}
0038h mov rax,7ff7c762e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7ee5e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 5e ee c7 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 78 8f 0d c8 f7 7f 00 00 e8 b7 a9 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 9a 22 5f 48 b8 a0 e3 62 c7 f7 7f 00 00 48 89 46 18 48 b8 78 7b ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c80d8f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 8f 0d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 a9 22 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 9a 22 5f}
0038h mov rax,7ff7c762e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7ee7b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 7b ee c7 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 88 91 0d c8 f7 7f 00 00 e8 67 a8 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 99 22 5f 48 b8 a0 e3 62 c7 f7 7f 00 00 48 89 46 18 48 b8 68 7f ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c80d9188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 91 0d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 a8 22 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 99 22 5f}
0038h mov rax,7ff7c762e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7ee7f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 7f ee c7 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 98 93 0d c8 f7 7f 00 00 e8 17 a7 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 98 22 5f 48 b8 a0 e3 62 c7 f7 7f 00 00 48 89 46 18 48 b8 48 81 ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c80d9398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 93 0d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 a7 22 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 98 22 5f}
0038h mov rax,7ff7c762e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7ee8148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 81 ee c7 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 a8 95 0d c8 f7 7f 00 00 e8 c7 a1 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 92 22 5f 48 b8 a0 e3 62 c7 f7 7f 00 00 48 89 46 18 48 b8 d8 85 ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c80d95a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 95 0d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 a1 22 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 92 22 5f}
0038h mov rax,7ff7c762e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7ee85d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 85 ee c7 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 b8 97 0d c8 f7 7f 00 00 e8 77 a0 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 91 22 5f 48 b8 a0 e3 62 c7 f7 7f 00 00 48 89 46 18 48 b8 b8 87 ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c80d97b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 97 0d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 a0 22 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 91 22 5f}
0038h mov rax,7ff7c762e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7ee87b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 87 ee c7 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 c8 99 0d c8 f7 7f 00 00 e8 27 9f 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 90 22 5f 48 b8 a0 e3 62 c7 f7 7f 00 00 48 89 46 18 48 b8 48 8c ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c80d99c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 99 0d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 9f 22 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 90 22 5f}
0038h mov rax,7ff7c762e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7ee8c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 8c ee c7 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 d8 9b 0d c8 f7 7f 00 00 e8 d7 9d 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 8f 22 5f 48 b8 a0 e3 62 c7 f7 7f 00 00 48 89 46 18 48 b8 48 8e ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c80d9bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 9b 0d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 9d 22 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 8f 22 5f}
0038h mov rax,7ff7c762e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7ee8e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 8e ee c7 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 00 a2 0d c8 f7 7f 00 00 e8 67 9c 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 8d 22 5f 48 b8 a0 e3 62 c7 f7 7f 00 00 48 89 46 18 48 b8 98 93 ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c80da200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 a2 0d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 9c 22 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 8d 22 5f}
0038h mov rax,7ff7c762e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7ee9398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 93 ee c7 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 30 a5 0d c8 f7 7f 00 00 e8 17 9b 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 8c 22 5f 48 b8 a0 e3 62 c7 f7 7f 00 00 48 89 46 18 48 b8 18 99 ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c80da530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 a5 0d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 9b 22 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 8c 22 5f}
0038h mov rax,7ff7c762e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7ee9918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 99 ee c7 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 40 a7 0d c8 f7 7f 00 00 e8 c7 99 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 8a 22 5f 48 b8 a0 e3 62 c7 f7 7f 00 00 48 89 46 18 48 b8 08 9e ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c80da740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a7 0d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 99 22 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 8a 22 5f}
0038h mov rax,7ff7c762e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7ee9e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 9e ee c7 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 50 a9 0d c8 f7 7f 00 00 e8 77 98 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 89 22 5f 48 b8 a0 e3 62 c7 f7 7f 00 00 48 89 46 18 48 b8 a8 9e ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c80da950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a9 0d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 98 22 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 89 22 5f}
0038h mov rax,7ff7c762e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7ee9ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 9e ee c7 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 60 ab 0d c8 f7 7f 00 00 e8 27 97 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 88 22 5f 48 b8 a0 e3 62 c7 f7 7f 00 00 48 89 46 18 48 b8 98 a0 ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c80dab60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ab 0d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 97 22 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 88 22 5f}
0038h mov rax,7ff7c762e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7eea098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 a0 ee c7 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 70 ad 0d c8 f7 7f 00 00 e8 d7 95 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 87 22 5f 48 b8 a0 e3 62 c7 f7 7f 00 00 48 89 46 18 48 b8 38 a1 ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c80dad70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ad 0d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 95 22 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 87 22 5f}
0038h mov rax,7ff7c762e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7eea138h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 a1 ee c7 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 80 af 0d c8 f7 7f 00 00 e8 87 94 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 85 22 5f 48 b8 a0 e3 62 c7 f7 7f 00 00 48 89 46 18 48 b8 48 a7 ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c80daf80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 af 0d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 94 22 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 85 22 5f}
0038h mov rax,7ff7c762e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7eea748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 a7 ee c7 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 90 b1 0d c8 f7 7f 00 00 e8 37 93 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 84 22 5f 48 b8 a0 e3 62 c7 f7 7f 00 00 48 89 46 18 48 b8 e8 a7 ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c80db190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 b1 0d c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 93 22 5f}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 84 22 5f}
0038h mov rax,7ff7c762e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c7eea7e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 a7 ee c7 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 98 b7 0d c8 f7 7f 00 00 e8 d0 8d 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 7f 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 b8 ae ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c80db798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 0d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 8d 22 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 7f 22 5f}
004fh mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c7eeaeb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 ae ee c7 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 28 bb 0d c8 f7 7f 00 00 e8 10 8c 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 7d 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 48 b0 ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c80dbb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bb 0d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 8c 22 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 7d 22 5f}
004fh mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c7eeb048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 b0 ee c7 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 38 bd 0d c8 f7 7f 00 00 e8 50 8a 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 7b 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 48 b1 ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c80dbd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bd 0d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 8a 22 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 7b 22 5f}
004fh mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c7eeb148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 b1 ee c7 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 48 bf 0d c8 f7 7f 00 00 e8 90 88 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 79 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 d0 b6 ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c80dbf48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 bf 0d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 88 22 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 79 22 5f}
004fh mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c7eeb6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 b6 ee c7 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 58 c1 0d c8 f7 7f 00 00 e8 d0 86 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 78 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 b0 b7 ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c80dc158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c1 0d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 86 22 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 78 22 5f}
004fh mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c7eeb7b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 b7 ee c7 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[53] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 68 c3}
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
0031h (bad)                                   ; <invalid> || <invalid> || encoded[4]{48 b9 68 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ulong>> lookup<ulong>(N128 w, ComparisonKind:byte kind)
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 78 c5 0d c8 f7 7f 00 00 e8 50 83 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 74 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 d0 b9 ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c80dc578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c5 0d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 83 22 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 74 22 5f}
004fh mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c7eeb9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 b9 ee c7 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 88 c7 0d c8 f7 7f 00 00 e8 90 81 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 72 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 60 c1 ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c80dc788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c7 0d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 81 22 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 72 22 5f}
004fh mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c7eec160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 c1 ee c7 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b0 cd 0d c8 f7 7f 00 00 e8 d0 7f 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 71 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 08 d9 ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c80dcdb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 cd 0d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 7f 22 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 71 22 5f}
004fh mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c7eed908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 d9 ee c7 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 40 d1 0d c8 f7 7f 00 00 e8 10 7e 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 6f 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 a8 da ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c80dd140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d1 0d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 7e 22 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 6f 22 5f}
004fh mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c7eedaa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 da ee c7 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 50 d3 0d c8 f7 7f 00 00 e8 50 7c 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 6d 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 a8 db ee c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c80dd350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d3 0d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 7c 22 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 6d 22 5f}
004fh mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c7eedba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 db ee c7 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 60 d5 0d c8 f7 7f 00 00 e8 90 7a 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 6b 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 28 01 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c80dd560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d5 0d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 7a 22 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 6b 22 5f}
004fh mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c8030128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 01 03 c8 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[386] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 70 d7 0d c8 f7 7f 00 00 e8 d0 78 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 6a 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 08 02 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 70 d7 0d c8 f7 7f 00 00 e8 8a 78 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb 69 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 f8 01 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 70 d7 0d c8 f7 7f 00 00 e8 44 78 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 69 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 e8 01 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 40 ab de c7 f7 7f 00 00 e8 fe 77 22 5f 48 8b f8 40 88 77 08 48 b9 d8 96 72 c7 f7 7f 00 00 e8 28 fb 1c 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 d6 77 22 5f 48 8b d8 b9 4c 04 00 00 48 ba c8 56 b4 c7 f7 7f 00 00 e8 bf 10 35 5f 48 8b e8 48 8b ce e8 f4 63 73 ff 8b c8 e8 c5 16 73 ff 4c 8b c0 48 8b cd 48 8b d7 e8 27 4c 71 ff 48 8b d0 48 8b cb e8 4c a4 73 ff 48 8b cb e8 dc c3}
; TermCode = CTC_RET_SBB
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
0031h mov rcx,7ff7c80dd770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d7 0d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 78 22 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 6a 22 5f}
004fh mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c8030208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 02 03 c8 f7 7f 00 00}
0067h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
0077h mov rcx,7ff7c80dd770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d7 0d c8 f7 7f 00 00}
0081h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 78 22 5f}
0086h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0089h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
008dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0090h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 69 22 5f}
0095h mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
009fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
00a3h mov rax,7ff7c80301f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 01 03 c8 f7 7f 00 00}
00adh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
00b1h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00b4h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00b8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b9h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00bch ret                                     ; RET || C3 || encoded[1]{c3}
00bdh mov rcx,7ff7c80dd770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d7 0d c8 f7 7f 00 00}
00c7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 78 22 5f}
00cch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00cfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00d3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00d6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 69 22 5f}
00dbh mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
00e5h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
00e9h mov rax,7ff7c80301e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 01 03 c8 f7 7f 00 00}
00f3h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
00f7h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00fah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00feh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00ffh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0100h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0101h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0102h ret                                     ; RET || C3 || encoded[1]{c3}
0103h mov rcx,7ff7c7deab40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ab de c7 f7 7f 00 00}
010dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 77 22 5f}
0112h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0115h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0119h mov rcx,7ff7c77296d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 72 c7 f7 7f 00 00}
0123h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 fb 1c 5f}
0128h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
012bh mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 77 22 5f}
013ah mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
013dh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0142h mov rdx,7ff7c7b456c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 56 b4 c7 f7 7f 00 00}
014ch call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 10 35 5f}
0151h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0154h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0157h call 7ff7c77758f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 63 73 ff}
015ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
015eh call 7ff7c7770bc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 16 73 ff}
0163h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0166h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0169h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
016ch call 7ff7c7754138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 4c 71 ff}
0171h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0174h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0177h call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c a4 73 ff}
017ch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
017fh (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 dc c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<int>> lookup<int>(N256 w, ComparisonKind:byte kind)
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 80 d9 0d c8 f7 7f 00 00 e8 10 73 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 64 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 48 03 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c80dd980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d9 0d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 73 22 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 64 22 5f}
004fh mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c8030348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 03 03 c8 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 90 db 0d c8 f7 7f 00 00 e8 50 71 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 62 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 28 04 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c80ddb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 db 0d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 71 22 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 62 22 5f}
004fh mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c8030428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 04 03 c8 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a0 dd 0d c8 f7 7f 00 00 e8 90 6f 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 60 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 a8 0a 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c80ddda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 dd 0d c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 6f 22 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 60 22 5f}
004fh mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c8030aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 0a 03 c8 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 a8 e3 0d c8 f7 7f 00 00 e8 ca 6d 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb 5e 22 5f 48 b8 50 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 d0 f6 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c80de3a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 e3 0d c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 6d 22 5f}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 5e 22 5f}
0055h mov rax,7ff7c762e450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e4 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c803f6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 f6 03 c8 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 18 e9 0d c8 f7 7f 00 00 e8 ba 6b 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb 5c 22 5f 48 b8 50 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 98 f7 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c80de918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e9 0d c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 6b 22 5f}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 5c 22 5f}
0055h mov rax,7ff7c762e450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e4 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c803f798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 f7 03 c8 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 a8 ec 0d c8 f7 7f 00 00 e8 aa 69 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 db 5a 22 5f 48 b8 50 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 10 f8 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c80deca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ec 0d c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 69 22 5f}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 5a 22 5f}
0055h mov rax,7ff7c762e450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e4 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c803f810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 f8 03 c8 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 38 f0 0d c8 f7 7f 00 00 e8 9a 67 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 cb 58 22 5f 48 b8 50 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 88 f8 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c80df038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f0 0d c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 67 22 5f}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 58 22 5f}
0055h mov rax,7ff7c762e450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e4 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c803f888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 f8 03 c8 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 c8 f3 0d c8 f7 7f 00 00 e8 8a 65 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb 56 22 5f 48 b8 50 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 00 f9 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c80df3c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f3 0d c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 65 22 5f}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 56 22 5f}
0055h mov rax,7ff7c762e450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e4 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c803f900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 f9 03 c8 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 58 f7 0d c8 f7 7f 00 00 e8 7a 5f 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab 50 22 5f 48 b8 50 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 10 09 04 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c80df758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f7 0d c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 5f 22 5f}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 50 22 5f}
0055h mov rax,7ff7c762e450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e4 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8040910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 09 04 c8 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 e8 fa 0d c8 f7 7f 00 00 e8 6a 5d 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b 4e 22 5f 48 b8 50 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 88 09 04 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c80dfae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 fa 0d c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 5d 22 5f}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 4e 22 5f}
0055h mov rax,7ff7c762e450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e4 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8040988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 09 04 c8 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 78 fe 0d c8 f7 7f 00 00 e8 5a 5b 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b 4c 22 5f 48 b8 50 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 00 0a 04 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c80dfe78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 fe 0d c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 5b 22 5f}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 4c 22 5f}
0055h mov rax,7ff7c762e450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e4 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8040a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 0a 04 c8 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 48 06 0f c8 f7 7f 00 00 e8 4a 59 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b 4a 22 5f 48 b8 50 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 20 0b 04 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c80f0648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 06 0f c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 59 22 5f}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 4a 22 5f}
0055h mov rax,7ff7c762e450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e4 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8040b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 0b 04 c8 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 b8 0b 0f c8 f7 7f 00 00 e8 3a 57 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b 48 22 5f 48 b8 50 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 e8 0b 04 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c80f0bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 0b 0f c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 57 22 5f}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 48 22 5f}
0055h mov rax,7ff7c762e450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e4 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8040be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 0b 04 c8 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 48 0f 0f c8 f7 7f 00 00 e8 2a 55 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b 46 22 5f 48 b8 50 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 60 0c 04 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c80f0f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 0f 0f c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 55 22 5f}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 46 22 5f}
0055h mov rax,7ff7c762e450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e4 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8040c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 0c 04 c8 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 d8 12 0f c8 f7 7f 00 00 e8 1a 4f 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b 40 22 5f 48 b8 50 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 d8 0c 04 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c80f12d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 12 0f c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 4f 22 5f}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 40 22 5f}
0055h mov rax,7ff7c762e450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e4 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8040cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 0c 04 c8 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 68 16 0f c8 f7 7f 00 00 e8 0a 4d 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 3b 3e 22 5f 48 b8 50 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 b0 19 04 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c80f1668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 16 0f c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 4d 22 5f}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 3e 22 5f}
0055h mov rax,7ff7c762e450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e4 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c80419b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 19 04 c8 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 f8 19 0f c8 f7 7f 00 00 e8 fa 4a 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2b 3c 22 5f 48 b8 50 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 28 1a 04 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c80f19f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 19 0f c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 4a 22 5f}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 3c 22 5f}
0055h mov rax,7ff7c762e450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e4 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8041a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1a 04 c8 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 88 1d 0f c8 f7 7f 00 00 e8 ea 48 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b 3a 22 5f 48 b8 50 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 a0 1a 04 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c80f1d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 1d 0f c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 48 22 5f}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 3a 22 5f}
0055h mov rax,7ff7c762e450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e4 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8041aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 1a 04 c8 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 18 21 0f c8 f7 7f 00 00 e8 da 46 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 38 22 5f 48 b8 50 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 18 1b 04 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c80f2118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 21 0f c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 46 22 5f}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 38 22 5f}
0055h mov rax,7ff7c762e450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e4 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8041b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1b 04 c8 f7 7f 00 00}
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
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 98 b7 0d c8 f7 7f 00 00 e8 d2 44 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 36 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 0b 03 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 98 b7 0d c8 f7 7f 00 00 e8 93 44 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 35 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 0d 03 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 98 b7 0d c8 f7 7f 00 00 e8 54 44 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 35 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 0d 03 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 98 b7 0d c8 f7 7f 00 00 e8 15 44 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 35 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 0c 03 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 98 b7 0d c8 f7 7f 00 00 e8 d6 43 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 35 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 0c 03 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 98 b7 0d c8 f7 7f 00 00 e8 97 43 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 34 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 0c 03 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 98 b7 0d c8 f7 7f 00 00 e8 58 43 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 34 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 0d 03 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 98 b7 0d c8 f7 7f 00 00 e8 19 43 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 34 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 0c 03 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 98 b7 0d c8 f7 7f 00 00 e8 da 42 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 34 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 0d 03 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 98 b7 0d c8 f7 7f 00 00 e8 9b 42 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 33 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 0d 03 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 98 b7 0d c8 f7 7f 00 00 e8 5c 42 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 33 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 0c 03 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 98 b7 0d c8 f7 7f 00 00 e8 1d 42 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 33 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 0c 03 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 98 b7 0d c8 f7 7f 00 00 e8 de 41 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 33 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 0c 03 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 98 b7 0d c8 f7 7f 00 00 e8 9f 41 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 32 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 0d 03 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 98 b7 0d c8 f7 7f 00 00 e8 63 41 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 32 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 0c 03 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 98 b7 0d c8 f7 7f 00 00 e8 27 41 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 32 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 98 0d 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c80db798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 0d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 44 22 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 36 22 5f}
004dh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c8030bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 0b 03 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c80db798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 0d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 44 22 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 35 22 5f}
008ch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c8030dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 0d 03 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c80db798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 0d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 44 22 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 35 22 5f}
00cbh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c8030db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 0d 03 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c80db798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 0d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 44 22 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 35 22 5f}
010ah mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c8030c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 0c 03 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c80db798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 0d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 43 22 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 35 22 5f}
0149h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c8030cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 0c 03 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c80db798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 0d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 43 22 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 34 22 5f}
0188h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c8030cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 0c 03 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c80db798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 0d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 43 22 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 34 22 5f}
01c7h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c8030d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 0d 03 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c80db798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 0d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 43 22 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 34 22 5f}
0206h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c8030cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 0c 03 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c80db798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 0d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 42 22 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 34 22 5f}
0245h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c8030d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 0d 03 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c80db798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 0d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 42 22 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 33 22 5f}
0284h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c8030d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 0d 03 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c80db798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 0d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 42 22 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 33 22 5f}
02c3h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c8030c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0c 03 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c80db798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 0d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 42 22 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 33 22 5f}
0302h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c8030c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0c 03 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c80db798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 0d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 41 22 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 33 22 5f}
0341h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c8030c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 0c 03 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c80db798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 0d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 41 22 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 32 22 5f}
0380h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c8030d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 0d 03 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c80db798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 0d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 41 22 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 32 22 5f}
03bch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c8030c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 0c 03 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c80db798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 0d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 41 22 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 32 22 5f}
03f8h mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c8030d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 0d 03 c8 f7 7f 00 00}
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
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 28 bb 0d c8 f7 7f 00 00 e8 c2 3f 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 30 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 14 03 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 28 bb 0d c8 f7 7f 00 00 e8 83 3f 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 30 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 18 03 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 28 bb 0d c8 f7 7f 00 00 e8 44 3f 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 30 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 18 03 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 28 bb 0d c8 f7 7f 00 00 e8 05 3f 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 30 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 14 03 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 28 bb 0d c8 f7 7f 00 00 e8 c6 3e 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 2f 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 18 03 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 28 bb 0d c8 f7 7f 00 00 e8 87 3e 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 2f 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 15 03 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 28 bb 0d c8 f7 7f 00 00 e8 48 3e 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 2f 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 18 03 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 28 bb 0d c8 f7 7f 00 00 e8 09 3e 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 3a 2f 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 15 03 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 28 bb 0d c8 f7 7f 00 00 e8 ca 3d 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb 2e 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 18 03 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 28 bb 0d c8 f7 7f 00 00 e8 8b 3d 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc 2e 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 18 03 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 28 bb 0d c8 f7 7f 00 00 e8 4c 3d 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 7d 2e 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 14 03 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 28 bb 0d c8 f7 7f 00 00 e8 0d 3d 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 3e 2e 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 14 03 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 28 bb 0d c8 f7 7f 00 00 e8 ce 3c 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ff 2d 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 14 03 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 28 bb 0d c8 f7 7f 00 00 e8 8f 3c 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c0 2d 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 18 03 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 28 bb 0d c8 f7 7f 00 00 e8 53 3c 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 84 2d 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 14 03 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 28 bb 0d c8 f7 7f 00 00 e8 17 3c 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 2d 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 60 18 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c80dbb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bb 0d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 3f 22 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 30 22 5f}
004dh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c80314a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 03 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c80dbb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bb 0d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 3f 22 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 30 22 5f}
008ch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c8031880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 18 03 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c80dbb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bb 0d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 3f 22 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 30 22 5f}
00cbh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c8031870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 18 03 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c80dbb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bb 0d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 3f 22 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 30 22 5f}
010ah mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c80314b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 14 03 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c80dbb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bb 0d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 3e 22 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 2f 22 5f}
0149h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c8031810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 18 03 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c80dbb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bb 0d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 3e 22 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 2f 22 5f}
0188h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c8031518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 15 03 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c80dbb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bb 0d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 3e 22 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 2f 22 5f}
01c7h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c8031820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 18 03 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c80dbb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bb 0d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 3e 22 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 2f 22 5f}
0206h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c8031508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 15 03 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c80dbb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bb 0d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 3d 22 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 2e 22 5f}
0245h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c8031850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 18 03 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c80dbb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bb 0d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 3d 22 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 2e 22 5f}
0284h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c8031830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 18 03 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c80dbb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bb 0d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 3d 22 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 2e 22 5f}
02c3h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c80314d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 14 03 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c80dbb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bb 0d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 3d 22 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 2e 22 5f}
0302h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c80314f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 14 03 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c80dbb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bb 0d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 3c 22 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 2d 22 5f}
0341h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c80314e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 14 03 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c80dbb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bb 0d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 3c 22 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 2d 22 5f}
0380h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c8031840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 18 03 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c80dbb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bb 0d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 3c 22 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 2d 22 5f}
03bch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c80314c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 14 03 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c80dbb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bb 0d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 3c 22 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 2d 22 5f}
03f8h mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c8031860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 18 03 c8 f7 7f 00 00}
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
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 38 bd 0d c8 f7 7f 00 00 e8 b2 3a 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 2b 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 1c 03 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 38 bd 0d c8 f7 7f 00 00 e8 73 3a 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 2b 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 1f 03 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 38 bd 0d c8 f7 7f 00 00 e8 34 3a 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 2b 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 1f 03 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 38 bd 0d c8 f7 7f 00 00 e8 f5 39 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 2b 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 1f 03 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 38 bd 0d c8 f7 7f 00 00 e8 b6 39 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 2a 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 1f 03 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 38 bd 0d c8 f7 7f 00 00 e8 77 39 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 2a 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 1f 03 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 38 bd 0d c8 f7 7f 00 00 e8 38 39 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 2a 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 1f 03 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 38 bd 0d c8 f7 7f 00 00 e8 f9 38 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2a 2a 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 1f 03 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 38 bd 0d c8 f7 7f 00 00 e8 ba 38 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb 29 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 1f 03 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 38 bd 0d c8 f7 7f 00 00 e8 7b 38 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac 29 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 1f 03 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 38 bd 0d c8 f7 7f 00 00 e8 3c 38 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d 29 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 1f 03 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 38 bd 0d c8 f7 7f 00 00 e8 fd 37 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2e 29 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 1f 03 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 38 bd 0d c8 f7 7f 00 00 e8 be 37 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ef 28 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 1f 03 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 38 bd 0d c8 f7 7f 00 00 e8 7f 37 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b0 28 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 1f 03 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 38 bd 0d c8 f7 7f 00 00 e8 43 37 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 28 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 1f 03 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 38 bd 0d c8 f7 7f 00 00 e8 07 37 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 28 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 c0 1f 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c80dbd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bd 0d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 3a 22 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 2b 22 5f}
004dh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c8031c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 1c 03 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c80dbd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bd 0d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 3a 22 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 2b 22 5f}
008ch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c8031fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 1f 03 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c80dbd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bd 0d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 3a 22 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 2b 22 5f}
00cbh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c8031fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 1f 03 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c80dbd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bd 0d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 39 22 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 2b 22 5f}
010ah mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c8031f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 1f 03 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c80dbd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bd 0d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 39 22 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 2a 22 5f}
0149h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c8031f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 1f 03 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c80dbd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bd 0d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 39 22 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 2a 22 5f}
0188h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c8031f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 1f 03 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c80dbd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bd 0d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 39 22 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 2a 22 5f}
01c7h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c8031f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 1f 03 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c80dbd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bd 0d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 38 22 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 2a 22 5f}
0206h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c8031f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 1f 03 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c80dbd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bd 0d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 38 22 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 29 22 5f}
0245h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c8031fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1f 03 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c80dbd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bd 0d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 38 22 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 29 22 5f}
0284h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c8031f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 1f 03 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c80dbd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bd 0d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 38 22 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 29 22 5f}
02c3h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c8031f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 1f 03 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c80dbd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bd 0d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 37 22 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 29 22 5f}
0302h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c8031f40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 1f 03 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c80dbd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bd 0d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 37 22 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 28 22 5f}
0341h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c8031f30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 1f 03 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c80dbd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bd 0d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 37 22 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 28 22 5f}
0380h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c8031fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 1f 03 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c80dbd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bd 0d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 37 22 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 28 22 5f}
03bch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c8031f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 1f 03 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c80dbd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bd 0d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 37 22 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 28 22 5f}
03f8h mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c8031fc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 1f 03 c8 f7 7f 00 00}
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
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 48 bf 0d c8 f7 7f 00 00 e8 a2 31 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 22 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 22 03 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 48 bf 0d c8 f7 7f 00 00 e8 63 31 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 22 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 26 03 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 48 bf 0d c8 f7 7f 00 00 e8 24 31 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 22 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 26 03 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 48 bf 0d c8 f7 7f 00 00 e8 e5 30 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 16 22 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 22 03 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 48 bf 0d c8 f7 7f 00 00 e8 a6 30 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d7 21 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 22 03 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 48 bf 0d c8 f7 7f 00 00 e8 67 30 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 21 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 22 03 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 48 bf 0d c8 f7 7f 00 00 e8 28 30 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 21 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 22 03 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 48 bf 0d c8 f7 7f 00 00 e8 e9 2f 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1a 21 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 22 03 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 48 bf 0d c8 f7 7f 00 00 e8 aa 2f 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 db 20 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 25 03 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 48 bf 0d c8 f7 7f 00 00 e8 6b 2f 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c 20 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 22 03 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 48 bf 0d c8 f7 7f 00 00 e8 2c 2f 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d 20 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 22 03 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 48 bf 0d c8 f7 7f 00 00 e8 ed 2e 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1e 20 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 22 03 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 48 bf 0d c8 f7 7f 00 00 e8 ae 2e 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 df 1f 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 22 03 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 48 bf 0d c8 f7 7f 00 00 e8 6f 2e 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a0 1f 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 22 03 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 48 bf 0d c8 f7 7f 00 00 e8 33 2e 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 1f 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 22 03 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 48 bf 0d c8 f7 7f 00 00 e8 f7 2d 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 1f 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 00 26 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c80dbf48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 bf 0d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 31 22 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 22 22 5f}
004dh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c8032240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 22 03 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c80dbf48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 bf 0d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 31 22 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 22 22 5f}
008ch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c8032620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 26 03 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c80dbf48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 bf 0d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 31 22 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 22 22 5f}
00cbh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c8032610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 26 03 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c80dbf48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 bf 0d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 30 22 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 22 22 5f}
010ah mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c8032250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 22 03 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c80dbf48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 bf 0d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 30 22 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 21 22 5f}
0149h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c80322c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 22 03 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c80dbf48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 bf 0d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 30 22 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 21 22 5f}
0188h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c80322b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 22 03 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c80dbf48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 bf 0d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 30 22 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 21 22 5f}
01c7h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c80322d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 22 03 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c80dbf48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 bf 0d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 2f 22 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 21 22 5f}
0206h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c80322a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 22 03 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c80dbf48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 bf 0d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 2f 22 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 20 22 5f}
0245h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c80325f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 25 03 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c80dbf48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 bf 0d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 2f 22 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 20 22 5f}
0284h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c80322e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 22 03 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c80dbf48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 bf 0d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 2f 22 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 20 22 5f}
02c3h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c8032270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 22 03 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c80dbf48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 bf 0d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 2e 22 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 20 22 5f}
0302h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c8032290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 22 03 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c80dbf48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 bf 0d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 2e 22 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 1f 22 5f}
0341h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c8032280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 22 03 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c80dbf48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 bf 0d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 2e 22 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 1f 22 5f}
0380h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c80322f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 22 03 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c80dbf48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 bf 0d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 2e 22 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 1f 22 5f}
03bch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c8032260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 22 03 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c80dbf48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 bf 0d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 2d 22 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 1f 22 5f}
03f8h mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c8032600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 26 03 c8 f7 7f 00 00}
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
; lookup_gn128_BinaryBitLogicKind~8u[74] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 58 c1 0d c8 f7 7f 00 00 e8 92 2c 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
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
002fh mov rcx,7ff7c80dc158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c1 0d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 2c 22 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<int>> lookup<int>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_BinaryBitLogicKind~8u[51] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 68 c3}
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
002fh (bad)                                   ; <invalid> || <invalid> || encoded[4]{48 b9 68 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ulong>> lookup<ulong>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 78 c5 0d c8 f7 7f 00 00 e8 72 22 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 13 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 36 03 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 78 c5 0d c8 f7 7f 00 00 e8 33 22 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 13 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 37 03 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 78 c5 0d c8 f7 7f 00 00 e8 f4 21 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 13 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 37 03 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 78 c5 0d c8 f7 7f 00 00 e8 b5 21 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 12 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 36 03 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 78 c5 0d c8 f7 7f 00 00 e8 76 21 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 12 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 36 03 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 78 c5 0d c8 f7 7f 00 00 e8 37 21 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 12 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 36 03 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 78 c5 0d c8 f7 7f 00 00 e8 f8 20 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 12 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 36 03 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 78 c5 0d c8 f7 7f 00 00 e8 b9 20 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea 11 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 36 03 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 78 c5 0d c8 f7 7f 00 00 e8 7a 20 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab 11 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 36 03 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 78 c5 0d c8 f7 7f 00 00 e8 3b 20 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c 11 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 36 03 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 78 c5 0d c8 f7 7f 00 00 e8 fc 1f 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d 11 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 36 03 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 78 c5 0d c8 f7 7f 00 00 e8 bd 1f 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee 10 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 36 03 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 78 c5 0d c8 f7 7f 00 00 e8 7e 1f 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 af 10 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 36 03 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 78 c5 0d c8 f7 7f 00 00 e8 3f 1f 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 70 10 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 36 03 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 78 c5 0d c8 f7 7f 00 00 e8 03 1f 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 10 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 36 03 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 78 c5 0d c8 f7 7f 00 00 e8 c7 1e 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 0f 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 f0 36 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c80dc578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c5 0d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 22 22 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 13 22 5f}
004dh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c8033620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 36 03 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c80dc578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c5 0d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 22 22 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 13 22 5f}
008ch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c8033710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 37 03 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c80dc578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c5 0d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 21 22 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 13 22 5f}
00cbh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c8033700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 37 03 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c80dc578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c5 0d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 21 22 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 12 22 5f}
010ah mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c8033630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 36 03 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c80dc578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c5 0d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 21 22 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 12 22 5f}
0149h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c80336a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 36 03 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c80dc578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c5 0d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 21 22 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 12 22 5f}
0188h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c8033690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 36 03 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c80dc578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c5 0d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 20 22 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 12 22 5f}
01c7h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c80336b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 36 03 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c80dc578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c5 0d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 20 22 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 11 22 5f}
0206h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c8033680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 36 03 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c80dc578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c5 0d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 20 22 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 11 22 5f}
0245h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c80336e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 36 03 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c80dc578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c5 0d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 20 22 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 11 22 5f}
0284h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c80336c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 36 03 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c80dc578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c5 0d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 1f 22 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 11 22 5f}
02c3h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c8033650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 36 03 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c80dc578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c5 0d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 1f 22 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 10 22 5f}
0302h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c8033670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 36 03 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c80dc578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c5 0d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 1f 22 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 10 22 5f}
0341h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c8033660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 03 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c80dc578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c5 0d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 1f 22 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 10 22 5f}
0380h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c80336d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 36 03 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c80dc578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c5 0d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 1f 22 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 10 22 5f}
03bch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c8033640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 36 03 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c80dc578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c5 0d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 1e 22 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 0f 22 5f}
03f8h mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c80336f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 36 03 c8 f7 7f 00 00}
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
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 88 c7 0d c8 f7 7f 00 00 e8 62 1d 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 0e 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 3c 03 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 88 c7 0d c8 f7 7f 00 00 e8 23 1d 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 0e 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 3d 03 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 88 c7 0d c8 f7 7f 00 00 e8 e4 1c 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 0e 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 3d 03 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 88 c7 0d c8 f7 7f 00 00 e8 a5 1c 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 0d 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 3c 03 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 88 c7 0d c8 f7 7f 00 00 e8 66 1c 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 0d 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 3c 03 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 88 c7 0d c8 f7 7f 00 00 e8 27 1c 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 0d 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 3c 03 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 88 c7 0d c8 f7 7f 00 00 e8 e8 1b 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 0d 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 3c 03 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 88 c7 0d c8 f7 7f 00 00 e8 a9 1b 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 da 0c 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 3c 03 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 88 c7 0d c8 f7 7f 00 00 e8 6a 1b 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b 0c 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 3d 03 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 88 c7 0d c8 f7 7f 00 00 e8 2b 1b 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c 0c 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 3d 03 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 88 c7 0d c8 f7 7f 00 00 e8 ec 1a 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d 0c 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 3c 03 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 88 c7 0d c8 f7 7f 00 00 e8 ad 1a 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 de 0b 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 3c 03 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 88 c7 0d c8 f7 7f 00 00 e8 6e 1a 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f 0b 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 3c 03 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 88 c7 0d c8 f7 7f 00 00 e8 2f 1a 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 0b 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 3d 03 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 88 c7 0d c8 f7 7f 00 00 e8 f3 19 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 0b 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 3c 03 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 88 c7 0d c8 f7 7f 00 00 e8 b7 19 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 0a 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 30 3d 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c80dc788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c7 0d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 1d 22 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 0e 22 5f}
004dh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c8033c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 3c 03 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c80dc788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c7 0d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 1d 22 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 0e 22 5f}
008ch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c8033d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 3d 03 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c80dc788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c7 0d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 1c 22 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 0e 22 5f}
00cbh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c8033d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 3d 03 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c80dc788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c7 0d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 1c 22 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 0d 22 5f}
010ah mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c8033c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 3c 03 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c80dc788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c7 0d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 1c 22 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 0d 22 5f}
0149h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c8033ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 3c 03 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c80dc788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c7 0d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 1c 22 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 0d 22 5f}
0188h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c8033cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 3c 03 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c80dc788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c7 0d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 1b 22 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 0d 22 5f}
01c7h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c8033cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 3c 03 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c80dc788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c7 0d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 1b 22 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 0c 22 5f}
0206h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c8033cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 3c 03 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c80dc788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c7 0d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 1b 22 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 0c 22 5f}
0245h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c8033d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 3d 03 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c80dc788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c7 0d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 1b 22 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 0c 22 5f}
0284h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c8033d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 3d 03 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c80dc788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c7 0d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 1a 22 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 0c 22 5f}
02c3h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c8033c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 3c 03 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c80dc788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c7 0d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 1a 22 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 0b 22 5f}
0302h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c8033cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 3c 03 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c80dc788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c7 0d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 1a 22 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 0b 22 5f}
0341h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c8033ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 3c 03 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c80dc788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c7 0d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 1a 22 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 0b 22 5f}
0380h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c8033d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 3d 03 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c80dc788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c7 0d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 19 22 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 0b 22 5f}
03bch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c8033c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 3c 03 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c80dc788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c7 0d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 19 22 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 0a 22 5f}
03f8h mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c8033d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 3d 03 c8 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 b0 cd 0d c8 f7 7f 00 00 e8 52 18 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 09 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 43 03 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 b0 cd 0d c8 f7 7f 00 00 e8 13 18 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 09 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 45 03 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 b0 cd 0d c8 f7 7f 00 00 e8 d4 17 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 09 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 45 03 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 b0 cd 0d c8 f7 7f 00 00 e8 95 17 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 08 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 43 03 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 b0 cd 0d c8 f7 7f 00 00 e8 56 17 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 08 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 44 03 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 b0 cd 0d c8 f7 7f 00 00 e8 17 17 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 08 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 44 03 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 b0 cd 0d c8 f7 7f 00 00 e8 d8 16 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 08 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 44 03 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 b0 cd 0d c8 f7 7f 00 00 e8 99 16 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca 07 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 44 03 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 b0 cd 0d c8 f7 7f 00 00 e8 5a 16 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b 07 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 45 03 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 b0 cd 0d c8 f7 7f 00 00 e8 1b 16 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c 07 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 45 03 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 b0 cd 0d c8 f7 7f 00 00 e8 dc 15 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d 07 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 44 03 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b0 cd 0d c8 f7 7f 00 00 e8 9d 15 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce 06 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 44 03 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b0 cd 0d c8 f7 7f 00 00 e8 5e 15 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f 06 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 44 03 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b0 cd 0d c8 f7 7f 00 00 e8 1f 15 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 06 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 45 03 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b0 cd 0d c8 f7 7f 00 00 e8 e3 14 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 06 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 44 03 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b0 cd 0d c8 f7 7f 00 00 e8 a7 14 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 05 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 60 45 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c80dcdb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 cd 0d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 18 22 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 09 22 5f}
004dh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c80343c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 43 03 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c80dcdb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 cd 0d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 18 22 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 09 22 5f}
008ch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c80345a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 45 03 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c80dcdb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 cd 0d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 17 22 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 09 22 5f}
00cbh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c8034580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 45 03 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c80dcdb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 cd 0d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 17 22 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 08 22 5f}
010ah mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c80343e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 43 03 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c80dcdb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 cd 0d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 17 22 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 08 22 5f}
0149h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c80344c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 44 03 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c80dcdb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 cd 0d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 17 22 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 08 22 5f}
0188h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c80344a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 44 03 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c80dcdb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 cd 0d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 16 22 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 08 22 5f}
01c7h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c80344e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 44 03 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c80dcdb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 cd 0d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 16 22 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 07 22 5f}
0206h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c8034480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 44 03 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c80dcdb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 cd 0d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 16 22 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 07 22 5f}
0245h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c8034540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 45 03 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c80dcdb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 cd 0d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 16 22 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 07 22 5f}
0284h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c8034500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 45 03 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c80dcdb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 cd 0d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 15 22 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 07 22 5f}
02c3h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c8034420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 44 03 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c80dcdb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 cd 0d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 15 22 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 06 22 5f}
0302h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c8034460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 44 03 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c80dcdb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 cd 0d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 15 22 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 06 22 5f}
0341h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c8034440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 44 03 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c80dcdb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 cd 0d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 15 22 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 06 22 5f}
0380h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c8034520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 45 03 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c80dcdb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 cd 0d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 14 22 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 06 22 5f}
03bch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c8034400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 44 03 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c80dcdb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 cd 0d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 14 22 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 05 22 5f}
03f8h mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c8034560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 45 03 c8 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 40 d1 0d c8 f7 7f 00 00 e8 42 13 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 04 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 4c 03 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 40 d1 0d c8 f7 7f 00 00 e8 03 13 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 04 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 4f 03 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 40 d1 0d c8 f7 7f 00 00 e8 c4 12 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 03 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 4f 03 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 40 d1 0d c8 f7 7f 00 00 e8 85 12 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 03 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 4c 03 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 40 d1 0d c8 f7 7f 00 00 e8 46 12 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 03 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 4c 03 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 40 d1 0d c8 f7 7f 00 00 e8 07 12 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 03 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 4c 03 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 40 d1 0d c8 f7 7f 00 00 e8 c8 11 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 02 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 4f 03 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 40 d1 0d c8 f7 7f 00 00 e8 89 11 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba 02 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 4c 03 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 40 d1 0d c8 f7 7f 00 00 e8 4a 11 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b 02 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 4f 03 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 40 d1 0d c8 f7 7f 00 00 e8 0b 11 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c 02 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 4f 03 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 40 d1 0d c8 f7 7f 00 00 e8 cc 10 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd 01 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 4c 03 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 40 d1 0d c8 f7 7f 00 00 e8 8d 10 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 be 01 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 4c 03 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 40 d1 0d c8 f7 7f 00 00 e8 4e 10 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f 01 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 4c 03 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 40 d1 0d c8 f7 7f 00 00 e8 0f 10 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 01 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 4f 03 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 40 d1 0d c8 f7 7f 00 00 e8 d3 0f 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 01 22 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 4c 03 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 40 d1 0d c8 f7 7f 00 00 e8 97 0f 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 00 22 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 d8 4f 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c80dd140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d1 0d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 13 22 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 04 22 5f}
004dh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c8034c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 4c 03 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c80dd140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d1 0d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 13 22 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 04 22 5f}
008ch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c8034ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 4f 03 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c80dd140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d1 0d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 12 22 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 03 22 5f}
00cbh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c8034fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 4f 03 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c80dd140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d1 0d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 12 22 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 03 22 5f}
010ah mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c8034c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 4c 03 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c80dd140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d1 0d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 12 22 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 03 22 5f}
0149h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c8034c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 4c 03 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c80dd140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d1 0d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 12 22 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 03 22 5f}
0188h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c8034c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4c 03 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c80dd140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d1 0d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 11 22 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 02 22 5f}
01c7h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c8034f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 4f 03 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c80dd140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d1 0d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 11 22 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 02 22 5f}
0206h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c8034c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 4c 03 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c80dd140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d1 0d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 11 22 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 02 22 5f}
0245h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c8034fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 4f 03 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c80dd140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d1 0d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 11 22 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 02 22 5f}
0284h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c8034fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 4f 03 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c80dd140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d1 0d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 10 22 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 01 22 5f}
02c3h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c8034c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 4c 03 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c80dd140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d1 0d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 10 22 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 01 22 5f}
0302h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c8034c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 4c 03 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c80dd140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d1 0d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 10 22 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 01 22 5f}
0341h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c8034c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 4c 03 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c80dd140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d1 0d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 10 22 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 01 22 5f}
0380h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c8034fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 4f 03 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c80dd140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d1 0d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 0f 22 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 01 22 5f}
03bch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c8034c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 4c 03 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c80dd140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d1 0d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 0f 22 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 00 22 5f}
03f8h mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c8034fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 4f 03 c8 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[938] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 50 d3 0d c8 f7 7f 00 00 e8 32 0e 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 ff 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 53 03 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 50 d3 0d c8 f7 7f 00 00 e8 f3 0d 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 ff 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 54 03 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 50 d3 0d c8 f7 7f 00 00 e8 b4 0d 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 fe 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 54 03 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 50 d3 0d c8 f7 7f 00 00 e8 75 0d 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 fe 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 53 03 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 50 d3 0d c8 f7 7f 00 00 e8 36 0d 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 fe 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 54 03 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 50 d3 0d c8 f7 7f 00 00 e8 f7 0c 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 fe 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 54 03 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 50 d3 0d c8 f7 7f 00 00 e8 b8 0c 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 fd 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 54 03 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 50 d3 0d c8 f7 7f 00 00 e8 79 0c 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa fd 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 54 03 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 50 d3 0d c8 f7 7f 00 00 e8 3a 0c 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b fd 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 54 03 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 50 d3 0d c8 f7 7f 00 00 e8 fb 0b 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c fd 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 54 03 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 50 d3 0d c8 f7 7f 00 00 e8 bc 0b 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed fc 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 54 03 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 50 d3 0d c8 f7 7f 00 00 e8 7d 0b 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae fc 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 54 03 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 50 d3 0d c8 f7 7f 00 00 e8 3e 0b 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f fc 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 54 03 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 50 d3 0d c8 f7 7f 00 00 e8 ff 0a 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 fc 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 54 03 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 50 d3 0d c8 f7 7f 00 00 e8 c3}
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
002fh mov rcx,7ff7c80dd350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d3 0d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 0e 22 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 ff 21 5f}
004dh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c80353d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 53 03 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c80dd350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d3 0d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 0d 22 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 ff 21 5f}
008ch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c80354c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 54 03 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c80dd350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d3 0d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 0d 22 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 fe 21 5f}
00cbh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c80354b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 54 03 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c80dd350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d3 0d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 0d 22 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 fe 21 5f}
010ah mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c80353e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 53 03 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c80dd350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d3 0d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 0d 22 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 fe 21 5f}
0149h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c8035450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 54 03 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c80dd350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d3 0d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 0c 22 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 fe 21 5f}
0188h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c8035440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 54 03 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c80dd350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d3 0d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 0c 22 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 fd 21 5f}
01c7h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c8035460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 54 03 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c80dd350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d3 0d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 0c 22 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa fd 21 5f}
0206h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c8035430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 54 03 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c80dd350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d3 0d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 0c 22 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b fd 21 5f}
0245h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c8035490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 54 03 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c80dd350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d3 0d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 0b 22 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c fd 21 5f}
0284h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c8035470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 54 03 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c80dd350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d3 0d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 0b 22 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed fc 21 5f}
02c3h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c8035400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 54 03 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c80dd350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d3 0d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 0b 22 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae fc 21 5f}
0302h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c8035420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 54 03 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c80dd350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d3 0d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 0b 22 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f fc 21 5f}
0341h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c8035410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 54 03 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c80dd350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d3 0d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 0a 22 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 fc 21 5f}
0380h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c8035480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 54 03 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c80dd350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d3 0d c8 f7 7f 00 00}
03a8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<short>> lookup<short>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 60 d5 0d c8 f7 7f 00 00 e8 22 09 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 fa 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 54 03 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 60 d5 0d c8 f7 7f 00 00 e8 e3 08 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 fa 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 55 03 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 60 d5 0d c8 f7 7f 00 00 e8 a4 08 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 f9 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 55 03 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 60 d5 0d c8 f7 7f 00 00 e8 65 08 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 f9 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 54 03 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 60 d5 0d c8 f7 7f 00 00 e8 26 08 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 f9 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 55 03 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 60 d5 0d c8 f7 7f 00 00 e8 e7 07 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 f9 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 55 03 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 60 d5 0d c8 f7 7f 00 00 e8 a8 07 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 f8 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 55 03 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 60 d5 0d c8 f7 7f 00 00 e8 69 07 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a f8 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 55 03 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 60 d5 0d c8 f7 7f 00 00 e8 2a 07 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b f8 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 55 03 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 60 d5 0d c8 f7 7f 00 00 e8 eb 06 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c f8 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 55 03 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 60 d5 0d c8 f7 7f 00 00 e8 ac 06 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd f7 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 55 03 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 60 d5 0d c8 f7 7f 00 00 e8 6d 06 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e f7 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 55 03 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 60 d5 0d c8 f7 7f 00 00 e8 2e 06 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f f7 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 55 03 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 60 d5 0d c8 f7 7f 00 00 e8 ef 05 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 f7 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 55 03 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 60 d5 0d c8 f7 7f 00 00 e8 b3 05 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 f6 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 55 03 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 60 d5 0d c8 f7 7f 00 00 e8 77 05 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 f6 21 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 b0 55 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c80dd560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d5 0d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 09 22 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 fa 21 5f}
004dh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c80354e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 54 03 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c80dd560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d5 0d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 08 22 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 fa 21 5f}
008ch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c80355d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 55 03 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c80dd560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d5 0d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 08 22 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 f9 21 5f}
00cbh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c80355c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 55 03 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c80dd560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d5 0d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 08 22 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 f9 21 5f}
010ah mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c80354f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 54 03 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c80dd560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d5 0d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 08 22 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 f9 21 5f}
0149h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c8035560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 55 03 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c80dd560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d5 0d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 07 22 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 f9 21 5f}
0188h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c8035550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 55 03 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c80dd560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d5 0d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 07 22 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 f8 21 5f}
01c7h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c8035570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 55 03 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c80dd560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d5 0d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 07 22 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a f8 21 5f}
0206h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c8035540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 55 03 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c80dd560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d5 0d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 07 22 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b f8 21 5f}
0245h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c80355a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 55 03 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c80dd560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d5 0d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 06 22 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c f8 21 5f}
0284h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c8035580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 55 03 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c80dd560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d5 0d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 06 22 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd f7 21 5f}
02c3h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c8035510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 55 03 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c80dd560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d5 0d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 06 22 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e f7 21 5f}
0302h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c8035530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 55 03 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c80dd560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d5 0d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 06 22 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f f7 21 5f}
0341h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c8035520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 55 03 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c80dd560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d5 0d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 05 22 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 f7 21 5f}
0380h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c8035590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 55 03 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c80dd560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d5 0d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 05 22 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 f6 21 5f}
03bch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c8035500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 55 03 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c80dd560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d5 0d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 05 22 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 f6 21 5f}
03f8h mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c80355b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 55 03 c8 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 70 d7 0d c8 f7 7f 00 00 e8 12 04 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 f5 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 5e 03 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 70 d7 0d c8 f7 7f 00 00 e8 d3 03 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 f5 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 5f 03 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 70 d7 0d c8 f7 7f 00 00 e8 94 03 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 f4 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 5f 03 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 70 d7 0d c8 f7 7f 00 00 e8 55 03 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 86 f4 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 5e 03 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 70 d7 0d c8 f7 7f 00 00 e8 16 03 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 47 f4 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 5f 03 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 70 d7 0d c8 f7 7f 00 00 e8 d7 02 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 f4 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 5f 03 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 70 d7 0d c8 f7 7f 00 00 e8 98 02 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 f3 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 5f 03 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 70 d7 0d c8 f7 7f 00 00 e8 59 02 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 8a f3 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 5f 03 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 70 d7 0d c8 f7 7f 00 00 e8 1a 02 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b f3 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 5f 03 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 70 d7 0d c8 f7 7f 00 00 e8 db 01 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c f3 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 5f 03 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 70 d7 0d c8 f7 7f 00 00 e8 9c 01 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd f2 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 5f 03 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 70 d7 0d c8 f7 7f 00 00 e8 5d 01 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 8e f2 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 5f 03 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 70 d7 0d c8 f7 7f 00 00 e8 1e 01 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 4f f2 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 5f 03 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 70 d7 0d c8 f7 7f 00 00 e8 df 00 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 10 f2 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 5f 03 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 70 d7 0d c8 f7 7f 00 00 e8 a3 00 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 f1 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 5f 03 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 70 d7 0d c8 f7 7f 00 00 e8 67 00 22 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 f1 21 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 b8 5f 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c80dd770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d7 0d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 04 22 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 f5 21 5f}
004dh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c8035ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 5e 03 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c80dd770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d7 0d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 03 22 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 f5 21 5f}
008ch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c8035fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 5f 03 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c80dd770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d7 0d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 03 22 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 f4 21 5f}
00cbh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c8035fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 5f 03 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c80dd770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d7 0d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 03 22 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 f4 21 5f}
010ah mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c8035ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5e 03 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c80dd770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d7 0d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 03 22 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 f4 21 5f}
0149h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c8035f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5f 03 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c80dd770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d7 0d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 02 22 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 f4 21 5f}
0188h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c8035f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 5f 03 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c80dd770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d7 0d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 02 22 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 f3 21 5f}
01c7h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c8035f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5f 03 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c80dd770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d7 0d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 02 22 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a f3 21 5f}
0206h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c8035f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5f 03 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c80dd770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d7 0d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 02 22 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b f3 21 5f}
0245h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c8035fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 5f 03 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c80dd770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d7 0d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 01 22 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c f3 21 5f}
0284h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c8035f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 5f 03 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c80dd770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d7 0d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 01 22 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd f2 21 5f}
02c3h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c8035f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5f 03 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c80dd770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d7 0d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 01 22 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e f2 21 5f}
0302h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c8035f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 5f 03 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c80dd770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d7 0d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 01 22 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f f2 21 5f}
0341h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c8035f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 5f 03 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c80dd770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d7 0d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 00 22 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 f2 21 5f}
0380h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c8035f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 5f 03 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c80dd770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d7 0d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 00 22 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 f1 21 5f}
03bch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c8035f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 5f 03 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c80dd770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d7 0d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 00 22 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 f1 21 5f}
03f8h mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c8035fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 5f 03 c8 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[122] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 80 d9 0d c8 f7 7f 00 00 e8 02 ff 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 f0 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 5f 03 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 80 d9 0d c8 f7 7f 00 00 e8 c3}
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
002fh mov rcx,7ff7c80dd980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d9 0d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 ff 21 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 f0 21 5f}
004dh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c8035ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5f 03 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c80dd980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d9 0d c8 f7 7f 00 00}
0078h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ulong>> lookup<ulong>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 90 db 0d c8 f7 7f 00 00 e8 f2 f9 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 eb 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 69 03 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 90 db 0d c8 f7 7f 00 00 e8 b3 f9 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 ea 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 6a 03 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 90 db 0d c8 f7 7f 00 00 e8 74 f9 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 ea 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 6a 03 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 90 db 0d c8 f7 7f 00 00 e8 35 f9 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 66 ea 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 6a 03 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 90 db 0d c8 f7 7f 00 00 e8 f6 f8 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 27 ea 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 6a 03 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 90 db 0d c8 f7 7f 00 00 e8 b7 f8 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 e9 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 6a 03 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 90 db 0d c8 f7 7f 00 00 e8 78 f8 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 e9 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 6a 03 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 90 db 0d c8 f7 7f 00 00 e8 39 f8 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6a e9 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 6a 03 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 90 db 0d c8 f7 7f 00 00 e8 fa f7 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2b e9 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 6a 03 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 90 db 0d c8 f7 7f 00 00 e8 bb f7 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec e8 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 6a 03 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 90 db 0d c8 f7 7f 00 00 e8 7c f7 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad e8 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 6a 03 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 90 db 0d c8 f7 7f 00 00 e8 3d f7 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6e e8 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 6a 03 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 90 db 0d c8 f7 7f 00 00 e8 fe f6 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2f e8 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 6a 03 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 90 db 0d c8 f7 7f 00 00 e8 bf f6 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f0 e7 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 6a 03 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 90 db 0d c8 f7 7f 00 00 e8 83 f6 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 e7 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 6a 03 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 90 db 0d c8 f7 7f 00 00 e8 47 f6 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 e7 21 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 c8 6a 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c80ddb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 db 0d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 f9 21 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 eb 21 5f}
004dh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c80369f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 69 03 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c80ddb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 db 0d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 f9 21 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 ea 21 5f}
008ch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c8036ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 6a 03 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c80ddb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 db 0d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 f9 21 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 ea 21 5f}
00cbh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c8036ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 6a 03 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c80ddb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 db 0d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 f9 21 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 ea 21 5f}
010ah mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c8036a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 6a 03 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c80ddb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 db 0d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 f8 21 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 ea 21 5f}
0149h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c8036a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 6a 03 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c80ddb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 db 0d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 f8 21 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 e9 21 5f}
0188h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c8036a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6a 03 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c80ddb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 db 0d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 f8 21 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 e9 21 5f}
01c7h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c8036a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 6a 03 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c80ddb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 db 0d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 f8 21 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a e9 21 5f}
0206h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c8036a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 6a 03 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c80ddb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 db 0d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa f7 21 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b e9 21 5f}
0245h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c8036ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 6a 03 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c80ddb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 db 0d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb f7 21 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec e8 21 5f}
0284h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c8036a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 6a 03 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c80ddb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 db 0d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c f7 21 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad e8 21 5f}
02c3h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c8036a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 6a 03 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c80ddb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 db 0d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d f7 21 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e e8 21 5f}
0302h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c8036a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 6a 03 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c80ddb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 db 0d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe f6 21 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f e8 21 5f}
0341h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c8036a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 6a 03 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c80ddb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 db 0d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf f6 21 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 e7 21 5f}
0380h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c8036aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 6a 03 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c80ddb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 db 0d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 f6 21 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 e7 21 5f}
03bch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c8036a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 6a 03 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c80ddb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 db 0d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 f6 21 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 e7 21 5f}
03f8h mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c8036ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 6a 03 c8 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 a0 dd 0d c8 f7 7f 00 00 e8 e2 f4 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 e6 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 6b 03 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a0 dd 0d c8 f7 7f 00 00 e8 a3 f4 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 e5 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 71 03 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a0 dd 0d c8 f7 7f 00 00 e8 64 f4 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 e5 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 71 03 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a0 dd 0d c8 f7 7f 00 00 e8 25 f4 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 e5 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 6b 03 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a0 dd 0d c8 f7 7f 00 00 e8 e6 f3 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 e5 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 71 03 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a0 dd 0d c8 f7 7f 00 00 e8 a7 f3 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 e4 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 71 03 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a0 dd 0d c8 f7 7f 00 00 e8 68 f3 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 e4 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 71 03 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a0 dd 0d c8 f7 7f 00 00 e8 29 f3 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a e4 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 71 03 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a0 dd 0d c8 f7 7f 00 00 e8 ea f2 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b e4 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 71 03 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a0 dd 0d c8 f7 7f 00 00 e8 ab f2 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 dc e3 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 71 03 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a0 dd 0d c8 f7 7f 00 00 e8 6c f2 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d e3 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 6b 03 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a0 dd 0d c8 f7 7f 00 00 e8 2d f2 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5e e3 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 6b 03 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a0 dd 0d c8 f7 7f 00 00 e8 ee f1 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1f e3 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 6b 03 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a0 dd 0d c8 f7 7f 00 00 e8 af f1 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e0 e2 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 71 03 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a0 dd 0d c8 f7 7f 00 00 e8 73 f1 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 e2 21 5f 48 b9 10 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 6b 03 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a0 dd 0d c8 f7 7f 00 00 e8 37 f1 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 e2 21 5f 48 b8 10 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 b8 71 03 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c80ddda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 dd 0d c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 f4 21 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 e6 21 5f}
004dh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c8036b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 6b 03 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c80ddda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 dd 0d c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 f4 21 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 e5 21 5f}
008ch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c80371d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 71 03 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c80ddda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 dd 0d c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 f4 21 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 e5 21 5f}
00cbh mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c80371c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 71 03 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c80ddda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 dd 0d c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 f4 21 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 e5 21 5f}
010ah mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c8036b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 6b 03 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c80ddda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 dd 0d c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 f3 21 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 e5 21 5f}
0149h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c8037168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 71 03 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c80ddda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 dd 0d c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 f3 21 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 e4 21 5f}
0188h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c8037158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 71 03 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c80ddda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 dd 0d c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 f3 21 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 e4 21 5f}
01c7h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c8037178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 71 03 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c80ddda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 dd 0d c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 f3 21 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a e4 21 5f}
0206h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c8037148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 71 03 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c80ddda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 dd 0d c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea f2 21 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b e4 21 5f}
0245h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c80371a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 71 03 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c80ddda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 dd 0d c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab f2 21 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc e3 21 5f}
0284h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c8037188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 71 03 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c80ddda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 dd 0d c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c f2 21 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d e3 21 5f}
02c3h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c8036b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 6b 03 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c80ddda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 dd 0d c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d f2 21 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e e3 21 5f}
0302h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c8036b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 6b 03 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c80ddda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 dd 0d c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee f1 21 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f e3 21 5f}
0341h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c8036b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 6b 03 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c80ddda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 dd 0d c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af f1 21 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 e2 21 5f}
0380h mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c8037198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 71 03 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c80ddda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 dd 0d c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 f1 21 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 e2 21 5f}
03bch mov rcx,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c8036b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 6b 03 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c80ddda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 dd 0d c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 f1 21 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 e2 21 5f}
03f8h mov rax,7ff7c762e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c80371b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 71 03 c8 f7 7f 00 00}
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
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 78 ba 0c c8 f7 7f 00 00 e8 d0 eb 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 dd 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 7f 04 c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 91 eb 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 dc 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 7e 04 c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 52 eb 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 dc 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 7e 04 c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 13 eb 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 dc 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 7e 04 c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 d4 ea 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 dc 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 7e 04 c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 95 ea 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 db 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 7e 04 c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 56 ea 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 db 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 7e 04 c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 17 ea 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 db 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 7e 04 c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 d8 e9 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 db 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 7e 04 c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 99 e9 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca da 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 7d 04 c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 5a e9 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b da 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 7d 04 c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 1b e9 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c da 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 7d 04 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 dc e8 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d da 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 7d 04 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 9d e8 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce d9 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 7d 04 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 5e e8 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f d9 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 7d 04 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 1f e8 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 d9 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 7d 04 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 e0 e7 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 d9 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 7d 04 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 a1 e7 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 d8 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 7c 04 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 62 e7 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 d8 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 7c 04 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 23 e7 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 d8 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 7c 04 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 e4 e6 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 d8 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 7c 04 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 a5 e6 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 d7 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 3a 04 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 66 e6 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 d7 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 3a 04 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 27 e6 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 d7 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 3a 04 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 78 ba 0c c8 f7 7f 00 00 e8 e8 e5 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 d7 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 3a 04 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 78 ba 0c c8 f7 7f 00 00 e8 ac e5 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd d6 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 3a 04 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 78 ba 0c c8 f7 7f 00 00 e8 70 e5 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 d6 21 5f 48 b8 90 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 08 3a 04 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 eb 21 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 dd 21 5f}
004fh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c8047f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 7f 04 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 eb 21 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 dc 21 5f}
008eh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c8047ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 7e 04 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 eb 21 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 dc 21 5f}
00cdh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c8047ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 7e 04 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 eb 21 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 dc 21 5f}
010ch mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c8047eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 7e 04 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 ea 21 5f}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 dc 21 5f}
014bh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c8047e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 7e 04 c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 ea 21 5f}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 db 21 5f}
018ah mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c8047e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 7e 04 c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 ea 21 5f}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 db 21 5f}
01c9h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c8047e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 7e 04 c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 ea 21 5f}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 db 21 5f}
0208h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c8047e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 7e 04 c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 e9 21 5f}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 db 21 5f}
0247h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c8047e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 7e 04 c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 e9 21 5f}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca da 21 5f}
0286h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c8047df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 7d 04 c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a e9 21 5f}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b da 21 5f}
02c5h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c8047dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 7d 04 c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b e9 21 5f}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c da 21 5f}
0304h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c8047db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 7d 04 c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc e8 21 5f}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d da 21 5f}
0343h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c8047d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 7d 04 c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d e8 21 5f}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce d9 21 5f}
0382h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c8047d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 7d 04 c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e e8 21 5f}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f d9 21 5f}
03c1h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c8047d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 7d 04 c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f e8 21 5f}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 d9 21 5f}
0400h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c8047d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 7d 04 c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 e7 21 5f}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 d9 21 5f}
043fh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c8047d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 7d 04 c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 e7 21 5f}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 d8 21 5f}
047eh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c8047cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 7c 04 c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 e7 21 5f}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 d8 21 5f}
04bdh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c8047cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 7c 04 c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 e7 21 5f}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 d8 21 5f}
04fch mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c8047cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 7c 04 c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 e6 21 5f}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 d8 21 5f}
053bh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c8047c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 7c 04 c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 e6 21 5f}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 d7 21 5f}
057ah mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c8043aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 3a 04 c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 e6 21 5f}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 d7 21 5f}
05b9h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c8043a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 3a 04 c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 e6 21 5f}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 d7 21 5f}
05f8h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c8043a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 3a 04 c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 e5 21 5f}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 d7 21 5f}
0637h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c8043a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 3a 04 c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac e5 21 5f}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd d6 21 5f}
0673h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c8043a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3a 04 c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c80cba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 0c c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 e5 21 5f}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 d6 21 5f}
06afh mov rax,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e4 62 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c8043a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 3a 04 c8 f7 7f 00 00}
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
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 98 be 0c c8 f7 7f 00 00 e8 e0 df 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 d1 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 88 04 c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 a1 df 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 d0 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 88 04 c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 62 df 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 d0 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 88 04 c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 23 df 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 d0 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 88 04 c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 e4 de 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 d0 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 88 04 c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 a5 de 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 cf 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 80 04 c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 66 de 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 cf 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 80 04 c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 27 de 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 cf 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 80 04 c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 e8 dd 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 cf 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 80 04 c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 a9 dd 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 da ce 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 80 04 c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 6a dd 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b ce 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 80 04 c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 2b dd 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c ce 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 80 04 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 ec dc 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d ce 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 80 04 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 ad dc 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 de cd 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 80 04 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 6e dc 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f cd 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 7f 04 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 2f dc 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 cd 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 7f 04 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 f0 db 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 cd 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 7f 04 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 b1 db 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 cc 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 7f 04 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 72 db 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 cc 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 7f 04 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 33 db 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 cc 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 7f 04 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 f4 da 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 cc 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 7f 04 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 b5 da 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 cb 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 7f 04 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 76 da 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 cb 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 7f 04 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 37 da 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 cb 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 7f 04 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 98 be 0c c8 f7 7f 00 00 e8 f8 d9 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 cb 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 7f 04 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 98 be 0c c8 f7 7f 00 00 e8 bc d9 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed ca 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 7f 04 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 98 be 0c c8 f7 7f 00 00 e8 80 d9 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 ca 21 5f 48 b8 90 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 38 7f 04 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 df 21 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 d1 21 5f}
004fh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c80488c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 88 04 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 df 21 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 d0 21 5f}
008eh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c80488b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 88 04 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 df 21 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 d0 21 5f}
00cdh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c80488a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 88 04 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 df 21 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 d0 21 5f}
010ch mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c8048898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 88 04 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 de 21 5f}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 d0 21 5f}
014bh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c8048888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 88 04 c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 de 21 5f}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 cf 21 5f}
018ah mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c8048088h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 80 04 c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 de 21 5f}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 cf 21 5f}
01c9h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c8048078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 80 04 c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 de 21 5f}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 cf 21 5f}
0208h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c8048068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 80 04 c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 dd 21 5f}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 cf 21 5f}
0247h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c8048058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 80 04 c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 dd 21 5f}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da ce 21 5f}
0286h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c8048048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 80 04 c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a dd 21 5f}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b ce 21 5f}
02c5h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c8048038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 04 c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b dd 21 5f}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c ce 21 5f}
0304h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c8048028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 80 04 c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec dc 21 5f}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d ce 21 5f}
0343h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c8048018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 80 04 c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad dc 21 5f}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de cd 21 5f}
0382h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c8048008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 80 04 c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e dc 21 5f}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f cd 21 5f}
03c1h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c8047ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 7f 04 c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f dc 21 5f}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 cd 21 5f}
0400h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c8047fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 7f 04 c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 db 21 5f}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 cd 21 5f}
043fh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c8047fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 7f 04 c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 db 21 5f}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 cc 21 5f}
047eh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c8047fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7f 04 c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 db 21 5f}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 cc 21 5f}
04bdh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c8047fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 7f 04 c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 db 21 5f}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 cc 21 5f}
04fch mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c8047fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 7f 04 c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 da 21 5f}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 cc 21 5f}
053bh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c8047f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 7f 04 c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 da 21 5f}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 cb 21 5f}
057ah mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c8047f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 7f 04 c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 da 21 5f}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 cb 21 5f}
05b9h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c8047f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 7f 04 c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 da 21 5f}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 cb 21 5f}
05f8h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c8047f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 7f 04 c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 d9 21 5f}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 cb 21 5f}
0637h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c8047f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 7f 04 c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc d9 21 5f}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed ca 21 5f}
0673h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c8047f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 04 c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c80cbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be 0c c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 d9 21 5f}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 ca 21 5f}
06afh mov rax,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e4 62 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c8047f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 7f 04 c8 f7 7f 00 00}
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
; lookup_gn256_TernaryBitLogicKind~8u[1400] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 08 c1 0c c8 f7 7f 00 00 e8 f0 d7 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 c9 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 8a 04 c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 08 c1 0c c8 f7 7f 00 00 e8 b1 d7 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 c8 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 8a 04 c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 08 c1 0c c8 f7 7f 00 00 e8 72 d7 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 c8 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 8a 04 c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 08 c1 0c c8 f7 7f 00 00 e8 33 d7 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 c8 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 8a 04 c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 08 c1 0c c8 f7 7f 00 00 e8 f4 d6 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 c8 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 8a 04 c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 08 c1 0c c8 f7 7f 00 00 e8 b5 d6 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 c7 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 8a 04 c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 08 c1 0c c8 f7 7f 00 00 e8 76 d6 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 c7 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 8a 04 c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 08 c1 0c c8 f7 7f 00 00 e8 37 d6 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 c7 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 8a 04 c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 08 c1 0c c8 f7 7f 00 00 e8 f8 d5 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 c7 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 89 04 c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 08 c1 0c c8 f7 7f 00 00 e8 b9 d5 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea c6 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 89 04 c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 08 c1 0c c8 f7 7f 00 00 e8 7a d5 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab c6 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 89 04 c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 08 c1 0c c8 f7 7f 00 00 e8 3b d5 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c c6 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 89 04 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 08 c1 0c c8 f7 7f 00 00 e8 fc d4 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d c6 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 89 04 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 08 c1 0c c8 f7 7f 00 00 e8 bd d4 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee c5 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 89 04 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 08 c1 0c c8 f7 7f 00 00 e8 7e d4 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 af c5 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 89 04 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 08 c1 0c c8 f7 7f 00 00 e8 3f d4 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 70 c5 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 89 04 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 08 c1 0c c8 f7 7f 00 00 e8 00 d4 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 c5 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 89 04 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 08 c1 0c c8 f7 7f 00 00 e8 c1 d3 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 c4 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 89 04 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 08 c1 0c c8 f7 7f 00 00 e8 82 d3 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 c4 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 89 04 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 08 c1 0c c8 f7 7f 00 00 e8 43 d3 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 c4 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 89 04 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 08 c1 0c c8 f7 7f 00 00 e8 04 d3 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 c4 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 89 04 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 08 c1 0c c8 f7 7f 00 00 e8 c5 d2 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 c3}
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
0031h mov rcx,7ff7c80cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 0c c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 d7 21 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 c9 21 5f}
004fh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c8048a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 8a 04 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c80cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 0c c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 d7 21 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 c8 21 5f}
008eh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c8048a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8a 04 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c80cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 0c c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 d7 21 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 c8 21 5f}
00cdh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c8048a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 8a 04 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c80cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 0c c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 d7 21 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 c8 21 5f}
010ch mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c8048a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 8a 04 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c80cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 0c c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 d6 21 5f}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 c8 21 5f}
014bh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c8048a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 8a 04 c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c80cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 0c c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 d6 21 5f}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 c7 21 5f}
018ah mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c8048a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 8a 04 c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c80cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 0c c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 d6 21 5f}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 c7 21 5f}
01c9h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c8048a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 8a 04 c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c80cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 0c c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 d6 21 5f}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 c7 21 5f}
0208h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c8048a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8a 04 c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c80cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 0c c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 d5 21 5f}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 c7 21 5f}
0247h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c80489f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 04 c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c80cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 0c c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 d5 21 5f}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea c6 21 5f}
0286h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c80489e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 89 04 c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c80cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 0c c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a d5 21 5f}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab c6 21 5f}
02c5h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c80489d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 89 04 c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c80cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 0c c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b d5 21 5f}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c c6 21 5f}
0304h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c80489c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 89 04 c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c80cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 0c c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc d4 21 5f}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d c6 21 5f}
0343h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c80489b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 89 04 c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c80cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 0c c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd d4 21 5f}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee c5 21 5f}
0382h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c80489a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 89 04 c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c80cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 0c c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e d4 21 5f}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af c5 21 5f}
03c1h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c8048998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 89 04 c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c80cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 0c c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f d4 21 5f}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 c5 21 5f}
0400h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c8048988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 89 04 c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c80cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 0c c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 d4 21 5f}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 c5 21 5f}
043fh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c8048978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 89 04 c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c80cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 0c c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 d3 21 5f}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 c4 21 5f}
047eh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c8048968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 89 04 c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c80cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 0c c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 d3 21 5f}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 c4 21 5f}
04bdh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c8048958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 89 04 c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c80cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 0c c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 d3 21 5f}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 c4 21 5f}
04fch mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c8048948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 89 04 c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c80cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 0c c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 d3 21 5f}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 c4 21 5f}
053bh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c8048938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 89 04 c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c80cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c1 0c c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 d2 21 5f}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 f6 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<short>> lookup<short>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_TernaryBitLogicKind~8u[53] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 78 c3}
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
0031h (bad)                                   ; <invalid> || <invalid> || encoded[4]{48 b9 78 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<uint>> lookup<uint>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_TernaryBitLogicKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e8 c5 0c c8 f7 7f 00 00 e8 10 c4 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 b5 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 a5 04 c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 e8 c5 0c c8 f7 7f 00 00 e8 d1 c3}
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
0031h mov rcx,7ff7c80cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 0c c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 c4 21 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 b5 21 5f}
004fh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c804a5a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 a5 04 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c80cc5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c5 0c c8 f7 7f 00 00}
007ah (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 d1 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<int>> lookup<int>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 58 c8 0c c8 f7 7f 00 00 e8 20 bc 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 51 ad 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 a7 04 c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 e1 bb 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 ad 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 a7 04 c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 a2 bb 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 ac 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 a7 04 c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 63 bb 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 ac 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 a7 04 c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 24 bb 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 ac 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 a7 04 c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 e5 ba 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 16 ac 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 a7 04 c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 a6 ba 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d7 ab 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 a6 04 c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 67 ba 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 ab 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 a6 04 c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 28 ba 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 ab 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 a6 04 c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 e9 b9 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1a ab 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 a6 04 c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 aa b9 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 db aa 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 a6 04 c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 6b b9 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c aa 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 a6 04 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 2c b9 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d aa 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 a6 04 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 ed b8 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1e aa 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 a6 04 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 ae b8 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 df a9 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 a6 04 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 6f b8 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a0 a9 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 a6 04 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 30 b8 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 a9 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 a6 04 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 f1 b7 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 a9 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 a6 04 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 b2 b7 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 a8 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 a6 04 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 73 b7 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 a8 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 a6 04 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 34 b7 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 a8 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 a6 04 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 f5 b6 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 a8 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 a6 04 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 b6 b6 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 a7 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 a5 04 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 77 b6 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 a7 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 a5 04 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 58 c8 0c c8 f7 7f 00 00 e8 38 b6 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 a7 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 a5 04 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 58 c8 0c c8 f7 7f 00 00 e8 fc b5 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d a7 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 a5 04 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 58 c8 0c c8 f7 7f 00 00 e8 c0 b5 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 a6 21 5f 48 b8 90 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 b8 a5 04 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 bc 21 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 ad 21 5f}
004fh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c804a758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 a7 04 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 bb 21 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 ad 21 5f}
008eh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c804a748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 a7 04 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 bb 21 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 ac 21 5f}
00cdh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c804a738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 a7 04 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 bb 21 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 ac 21 5f}
010ch mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c804a728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 a7 04 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 bb 21 5f}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 ac 21 5f}
014bh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c804a718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 a7 04 c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 ba 21 5f}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 ac 21 5f}
018ah mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c804a708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 a7 04 c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 ba 21 5f}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 ab 21 5f}
01c9h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c804a6f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 a6 04 c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 ba 21 5f}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 ab 21 5f}
0208h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c804a6e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 a6 04 c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 ba 21 5f}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 ab 21 5f}
0247h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c804a6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 a6 04 c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 b9 21 5f}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a ab 21 5f}
0286h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c804a6c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 a6 04 c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa b9 21 5f}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db aa 21 5f}
02c5h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c804a6b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 a6 04 c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b b9 21 5f}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c aa 21 5f}
0304h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c804a6a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 a6 04 c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c b9 21 5f}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d aa 21 5f}
0343h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c804a698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 a6 04 c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed b8 21 5f}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e aa 21 5f}
0382h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c804a688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 a6 04 c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae b8 21 5f}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df a9 21 5f}
03c1h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c804a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 04 c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f b8 21 5f}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 a9 21 5f}
0400h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c804a668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 a6 04 c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 b8 21 5f}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 a9 21 5f}
043fh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c804a658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 a6 04 c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 b7 21 5f}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 a9 21 5f}
047eh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c804a648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 a6 04 c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 b7 21 5f}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 a8 21 5f}
04bdh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c804a638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 a6 04 c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 b7 21 5f}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 a8 21 5f}
04fch mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c804a628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 a6 04 c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 b7 21 5f}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 a8 21 5f}
053bh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c804a618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 a6 04 c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 b6 21 5f}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 a8 21 5f}
057ah mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c804a608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 a6 04 c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 b6 21 5f}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 a7 21 5f}
05b9h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c804a5f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 a5 04 c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 b6 21 5f}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 a7 21 5f}
05f8h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c804a5e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 a5 04 c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 b6 21 5f}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 a7 21 5f}
0637h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c804a5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 a5 04 c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc b5 21 5f}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d a7 21 5f}
0673h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c804a5c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 a5 04 c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c80cc858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c8 0c c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 b5 21 5f}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 a6 21 5f}
06afh mov rax,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e4 62 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c804a5b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 a5 04 c8 f7 7f 00 00}
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
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 30 b0 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 a1 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 b8 04 c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 f1 af 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 a1 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 b8 04 c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 b2 af 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 a0 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 b8 04 c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 73 af 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 a0 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 b8 04 c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 34 af 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 a0 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 b8 04 c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 f5 ae 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 a0 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 b8 04 c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 b6 ae 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 9f 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 b8 04 c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 77 ae 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 9f 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 b8 04 c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 38 ae 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 9f 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 b8 04 c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 f9 ad 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2a 9f 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 b8 04 c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 ba ad 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb 9e 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 b8 04 c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 7b ad 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac 9e 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 b8 04 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 3c ad 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d 9e 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 a8 04 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 fd ac 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2e 9e 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 a8 04 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 be ac 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ef 9d 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 a8 04 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 7f ac 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b0 9d 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 a8 04 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 40 ac 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 9d 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 a8 04 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 01 ac 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 9d 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 a7 04 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 c2 ab 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 9c 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 a7 04 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 83 ab 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 9c 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 a7 04 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 44 ab 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 9c 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 a7 04 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 05 ab 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 9c 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 a7 04 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 c6 aa 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 9b 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 a7 04 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 87 aa 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 9b 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 a7 04 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 48 aa 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 9b 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 a7 04 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 0c aa 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d 9b 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 a7 04 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c8 ca 0c c8 f7 7f 00 00 e8 d0 a9 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 9b 21 5f 48 b8 90 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 68 a7 04 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 b0 21 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 a1 21 5f}
004fh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c804b8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 b8 04 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 af 21 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 a1 21 5f}
008eh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c804b8d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b8 04 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 af 21 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 a0 21 5f}
00cdh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c804b8c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 b8 04 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 af 21 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 a0 21 5f}
010ch mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c804b8b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 b8 04 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 af 21 5f}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 a0 21 5f}
014bh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c804b8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 b8 04 c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 ae 21 5f}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 a0 21 5f}
018ah mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c804b898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b8 04 c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 ae 21 5f}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 9f 21 5f}
01c9h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c804b888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 b8 04 c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 ae 21 5f}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 9f 21 5f}
0208h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c804b878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 b8 04 c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 ae 21 5f}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 9f 21 5f}
0247h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c804b868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 b8 04 c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 ad 21 5f}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 9f 21 5f}
0286h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c804b858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 b8 04 c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba ad 21 5f}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 9e 21 5f}
02c5h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c804b848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b8 04 c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b ad 21 5f}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 9e 21 5f}
0304h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c804b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 04 c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c ad 21 5f}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 9e 21 5f}
0343h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c804a848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 a8 04 c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd ac 21 5f}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 9e 21 5f}
0382h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c804a838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 a8 04 c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be ac 21 5f}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 9d 21 5f}
03c1h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c804a828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 a8 04 c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f ac 21 5f}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 9d 21 5f}
0400h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c804a818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 a8 04 c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 ac 21 5f}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 9d 21 5f}
043fh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c804a808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 a8 04 c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 ac 21 5f}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 9d 21 5f}
047eh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c804a7f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 a7 04 c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 ab 21 5f}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 9c 21 5f}
04bdh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c804a7e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 a7 04 c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 ab 21 5f}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 9c 21 5f}
04fch mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c804a7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 a7 04 c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 ab 21 5f}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 9c 21 5f}
053bh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c804a7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 a7 04 c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 ab 21 5f}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 9c 21 5f}
057ah mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c804a7b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 a7 04 c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 aa 21 5f}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 9b 21 5f}
05b9h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c804a7a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 a7 04 c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 aa 21 5f}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 9b 21 5f}
05f8h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c804a798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 a7 04 c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 aa 21 5f}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 9b 21 5f}
0637h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c804a788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 a7 04 c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c aa 21 5f}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 9b 21 5f}
0673h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c804a778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a7 04 c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c80ccac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ca 0c c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 a9 21 5f}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 9b 21 5f}
06afh mov rax,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e4 62 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c804a768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 a7 04 c8 f7 7f 00 00}
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
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 38 cd 0c c8 f7 7f 00 00 e8 40 a8 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 99 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 ba 04 c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 01 a8 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 99 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 ba 04 c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 c2 a7 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 98 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 ba 04 c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 83 a7 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 98 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 ba 04 c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 44 a7 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 98 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 ba 04 c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 05 a7 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 98 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 ba 04 c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 c6 a6 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 97 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 ba 04 c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 87 a6 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 97 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 ba 04 c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 48 a6 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 97 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 ba 04 c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 09 a6 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 3a 97 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 ba 04 c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 ca a5 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb 96 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 b9 04 c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 8b a5 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc 96 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 b9 04 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 4c a5 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 7d 96 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 b9 04 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 0d a5 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 3e 96 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 b9 04 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 ce a4 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ff 95 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 b9 04 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 8f a4 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c0 95 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 b9 04 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 50 a4 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 95 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 b9 04 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 11 a4 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 95 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 b9 04 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 d2 a3 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 95 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 b9 04 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 93 a3 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 94 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 b9 04 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 54 a3 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 94 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 b9 04 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 15 a3 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 94 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 b9 04 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 d6 a2 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 94 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 b9 04 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 97 a2 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 93 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 b9 04 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 38 cd 0c c8 f7 7f 00 00 e8 58 a2 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 93 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 b9 04 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 38 cd 0c c8 f7 7f 00 00 e8 1c a2 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 4d 93 21 5f 48 b9 90 e4 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 b9 04 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 38 cd 0c c8 f7 7f 00 00 e8 e0 a1 21 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 93 21 5f 48 b8 90 e4 62 c7 f7 7f 00 00 48 89 46 18 48 b8 f8 b8 04 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 a8 21 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 99 21 5f}
004fh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c804ba98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ba 04 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 a8 21 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 99 21 5f}
008eh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c804ba88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ba 04 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 a7 21 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 98 21 5f}
00cdh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c804ba78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ba 04 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 a7 21 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 98 21 5f}
010ch mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c804ba68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ba 04 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 a7 21 5f}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 98 21 5f}
014bh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c804ba58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 ba 04 c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 a7 21 5f}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 98 21 5f}
018ah mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c804ba48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ba 04 c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 a6 21 5f}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 97 21 5f}
01c9h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c804ba38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ba 04 c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 a6 21 5f}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 97 21 5f}
0208h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c804ba28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ba 04 c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 a6 21 5f}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 97 21 5f}
0247h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c804ba18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ba 04 c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 a6 21 5f}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 97 21 5f}
0286h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c804ba08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ba 04 c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca a5 21 5f}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 96 21 5f}
02c5h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c804b9f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 b9 04 c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b a5 21 5f}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 96 21 5f}
0304h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c804b9e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 b9 04 c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c a5 21 5f}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 96 21 5f}
0343h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c804b9d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b9 04 c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d a5 21 5f}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 96 21 5f}
0382h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c804b9c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 b9 04 c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce a4 21 5f}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 95 21 5f}
03c1h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c804b9b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 b9 04 c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f a4 21 5f}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 95 21 5f}
0400h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c804b9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 b9 04 c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 a4 21 5f}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 95 21 5f}
043fh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c804b998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b9 04 c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 a4 21 5f}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 95 21 5f}
047eh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c804b988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 b9 04 c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 a3 21 5f}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 95 21 5f}
04bdh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c804b978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 b9 04 c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 a3 21 5f}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 94 21 5f}
04fch mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c804b968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 b9 04 c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 a3 21 5f}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 94 21 5f}
053bh mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c804b958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 b9 04 c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 a3 21 5f}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 94 21 5f}
057ah mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c804b948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b9 04 c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 a2 21 5f}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 94 21 5f}
05b9h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c804b938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b9 04 c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 a2 21 5f}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 93 21 5f}
05f8h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c804b928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 b9 04 c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 a2 21 5f}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 93 21 5f}
0637h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c804b918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b9 04 c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c a2 21 5f}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 93 21 5f}
0673h mov rcx,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 62 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c804b908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b9 04 c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c80ccd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 0c c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 a1 21 5f}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 93 21 5f}
06afh mov rax,7ff7c762e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e4 62 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c804b8f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 b8 04 c8 f7 7f 00 00}
06c7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06ceh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
06d2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
06d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d6h ret                                     ; RET || C3 || encoded[1]{c3}
