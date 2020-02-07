------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<byte>> lookup<byte>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 48 1f ac c8 f7 7f 00 00 e8 97 3b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 2c b2 5e 48 b8 60 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 00 66 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ac1f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1f ac c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 3b b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 2c b2 5e}
0038h mov rax,7ff7c762e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8736600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 66 73 c8 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 f8 4c ac c8 f7 7f 00 00 e8 47 3a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 2b b2 5e 48 b8 60 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 a0 66 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ac4cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 4c ac c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 3a b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 2b b2 5e}
0038h mov rax,7ff7c762e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c87366a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 66 73 c8 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 f8 20 ac c8 f7 7f 00 00 e8 f7 38 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 2a b2 5e 48 b8 60 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 f0 66 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ac20f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 20 ac c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 38 b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 2a b2 5e}
0038h mov rax,7ff7c762e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c87366f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 66 73 c8 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 18 2b ac c8 f7 7f 00 00 e8 a7 37 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 28 b2 5e 48 b8 60 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 40 67 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ac2b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 2b ac c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 37 b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 28 b2 5e}
0038h mov rax,7ff7c762e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8736740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 67 73 c8 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 a8 22 ac c8 f7 7f 00 00 e8 57 36 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 88 27 b2 5e 48 b8 60 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 98 87 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ac22a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 22 ac c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 36 b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 27 b2 5e}
0038h mov rax,7ff7c762e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8738798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 87 73 c8 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 c8 2c ac c8 f7 7f 00 00 e8 07 35 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 26 b2 5e 48 b8 60 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 e8 87 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ac2cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 2c ac c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 35 b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 26 b2 5e}
0038h mov rax,7ff7c762e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c87387e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 87 73 c8 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 78 02 ac c8 f7 7f 00 00 e8 b7 33 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 24 b2 5e 48 b8 60 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 38 88 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ac0278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 02 ac c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 33 b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 24 b2 5e}
0038h mov rax,7ff7c762e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8738838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 88 73 c8 f7 7f 00 00}
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
; lookup_gn128_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 a8 4e ac c8 f7 7f 00 00 e8 67 32 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 23 b2 5e 48 b8 60 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 88 88 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ac4ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 4e ac c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 32 b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 23 b2 5e}
0038h mov rax,7ff7c762e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8738888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 88 73 c8 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 08 26 ac c8 f7 7f 00 00 e8 17 31 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 22 b2 5e 48 b8 60 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 78 89 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ac2608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 26 ac c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 31 b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 22 b2 5e}
0038h mov rax,7ff7c762e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8738978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 89 73 c8 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 58 50 ac c8 f7 7f 00 00 e8 c7 2f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 20 b2 5e 48 b8 60 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 18 8a 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ac5058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 50 ac c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 2f b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 20 b2 5e}
0038h mov rax,7ff7c762e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8738a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 8a 73 c8 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 b8 27 ac c8 f7 7f 00 00 e8 77 2e b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 1f b2 5e 48 b8 60 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 68 8a 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ac27b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 27 ac c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 2e b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 1f b2 5e}
0038h mov rax,7ff7c762e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8738a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 8a 73 c8 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 78 2e ac c8 f7 7f 00 00 e8 27 2d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 1e b2 5e 48 b8 60 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 b8 8a 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ac2e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 2e ac c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 2d b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 1e b2 5e}
0038h mov rax,7ff7c762e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8738ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 8a 73 c8 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 68 29 ac c8 f7 7f 00 00 e8 d7 2b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 1d b2 5e 48 b8 60 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 08 8b 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ac2968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 29 ac c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 2b b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 1d b2 5e}
0038h mov rax,7ff7c762e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8738b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 8b 73 c8 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 28 30 ac c8 f7 7f 00 00 e8 87 2a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 1b b2 5e 48 b8 60 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 58 8b 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ac3028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 30 ac c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 2a b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 1b b2 5e}
0038h mov rax,7ff7c762e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8738b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 8b 73 c8 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 58 24 ac c8 f7 7f 00 00 e8 37 29 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 1a b2 5e 48 b8 60 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 28 99 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ac2458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 24 ac c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 29 b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 1a b2 5e}
0038h mov rax,7ff7c762e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8739928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 99 73 c8 f7 7f 00 00}
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
; lookup_gn256_UnaryBitLogicKind~8u[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 40 6d ac c8 f7 7f 00 00 e8 e7 27 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 19 b2 5e 48 b8 60 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 78 99 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c8ac6d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6d ac c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 27 b2 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 19 b2 5e}
0038h mov rax,7ff7c762e260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c8739978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 99 73 c8 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 40 bf aa c8 f7 7f 00 00 e8 80 26 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 17 b2 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 88 9a 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8aabf40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 bf aa c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 26 b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 17 b2 5e}
004fh mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c8739a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 9a 73 c8 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 10 bc aa c8 f7 7f 00 00 e8 c0 24 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 15 b2 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 08 9b 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8aabc10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 bc aa c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 24 b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 15 b2 5e}
004fh mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c8739b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 9b 73 c8 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b0 b8 aa c8 f7 7f 00 00 e8 00 23 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 14 b2 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 48 9b 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8aab8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 b8 aa c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 23 b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 14 b2 5e}
004fh mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c8739b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 9b 73 c8 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 00 b7 aa c8 f7 7f 00 00 e8 40 21 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 12 b2 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 88 9b 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8aab700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 b7 aa c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 21 b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 12 b2 5e}
004fh mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c8739b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 9b 73 c8 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 50 ca aa c8 f7 7f 00 00 e8 80 1f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 10 b2 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 c8 9b 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8aaca50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ca aa c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 1f b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 10 b2 5e}
004fh mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c8739bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 9b 73 c8 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 20 c7 aa c8 f7 7f 00 00 e8 c0 1d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 0e b2 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 08 9c 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8aac720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c7 aa c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 1d b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 0e b2 5e}
004fh mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c8739c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 9c 73 c8 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 70 c2 aa c8 f7 7f 00 00 e8 00 1c b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 0d b2 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 48 9c 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8aac270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c2 aa c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 1c b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 0d b2 5e}
004fh mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c8739c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 9c 73 c8 f7 7f 00 00}
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
; lookup_gn128_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 80 cd aa c8 f7 7f 00 00 e8 40 1a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 0b b2 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 08 9d 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8aacd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 cd aa c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 1a b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 0b b2 5e}
004fh mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c8739d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 9d 73 c8 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 80 ed aa c8 f7 7f 00 00 e8 80 14 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 05 b2 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 98 ad 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8aaed80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ed aa c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 14 b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 05 b2 5e}
004fh mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c873ad98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 ad 73 c8 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 50 ea aa c8 f7 7f 00 00 e8 c0 12 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 03 b2 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 18 ae 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8aaea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea aa c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 12 b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 03 b2 5e}
004fh mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c873ae18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 ae 73 c8 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e8 4c aa c8 f7 7f 00 00 e8 00 11 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 02 b2 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 58 ae 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8aa4ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 4c aa c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 11 b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 02 b2 5e}
004fh mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c873ae58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 ae 73 c8 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 60 ba aa c8 f7 7f 00 00 e8 40 0f b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 00 b2 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 98 ae 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8aaba60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ba aa c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 0f b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 00 b2 5e}
004fh mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c873ae98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 ae 73 c8 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c0 f7 aa c8 f7 7f 00 00 e8 80 0d b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 fe b1 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 d8 ae 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8aaf7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f7 aa c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 0d b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 fe b1 5e}
004fh mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c873aed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 ae 73 c8 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 90 f4 aa c8 f7 7f 00 00 e8 c0 0b b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 fc b1 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 18 af 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8aaf490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f4 aa c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 0b b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 fc b1 5e}
004fh mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c873af18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 af 73 c8 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 20 fe aa c8 f7 7f 00 00 e8 00 0a b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 fb b1 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 58 af 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8aafe20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fe aa c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 0a b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 fb b1 5e}
004fh mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c873af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 af 73 c8 f7 7f 00 00}
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
; lookup_gn256_ComparisonKind~8u[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f0 fa aa c8 f7 7f 00 00 e8 40 08 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 f9 b1 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 f8 bb 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8aafaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 fa aa c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 08 b2 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 f9 b1 5e}
004fh mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c873bbf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 bb 73 c8 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 08 b7 cb c8 f7 7f 00 00 e8 7a 06 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab f7 b1 5e 48 b8 00 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 c8 55 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8cbb708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b7 cb c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 06 b2 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab f7 b1 5e}
0055h mov rax,7ff7c762ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c87455c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 55 74 c8 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 78 bc cb c8 f7 7f 00 00 e8 6a 04 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b f5 b1 5e 48 b8 00 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 90 56 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8cbbc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 bc cb c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 04 b2 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b f5 b1 5e}
0055h mov rax,7ff7c762ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8745690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 56 74 c8 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 08 c0 cb c8 f7 7f 00 00 e8 5a 02 b2 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b f3 b1 5e 48 b8 00 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 08 57 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8cbc008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c0 cb c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 02 b2 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b f3 b1 5e}
0055h mov rax,7ff7c762ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8745708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 57 74 c8 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[59] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 98 c3}
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
0037h (bad)                                   ; <invalid> || <invalid> || encoded[4]{48 b9 98 c3}
------------------------------------------------------------------------------------------------------------------------
; Shifter<Vector128<uint>> lookup<uint>(N128 w, ShiftOpKind:byte kind)
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 28 c7 cb c8 f7 7f 00 00 e8 3a fa b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b eb b1 5e 48 b8 00 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 d0 57 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8cbc728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c7 cb c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a fa b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b eb b1 5e}
0055h mov rax,7ff7c762ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c87457d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 57 74 c8 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 b8 ca cb c8 f7 7f 00 00 e8 2a f8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b e9 b1 5e 48 b8 00 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 b8 6e 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8cbcab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 ca cb c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a f8 b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b e9 b1 5e}
0055h mov rax,7ff7c762ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8746eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 6e 74 c8 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 48 ce cb c8 f7 7f 00 00 e8 1a f6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b e7 b1 5e 48 b8 00 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 30 6f 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8cbce48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ce cb c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a f6 b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b e7 b1 5e}
0055h mov rax,7ff7c762ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8746f30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 6f 74 c8 f7 7f 00 00}
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
; lookup_gn128_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 d8 d1 cb c8 f7 7f 00 00 e8 0a f4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3b e5 b1 5e 48 b8 00 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 a8 6f 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8cbd1d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d1 cb c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a f4 b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b e5 b1 5e}
0055h mov rax,7ff7c762ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8746fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 6f 74 c8 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 80 d9 cb c8 f7 7f 00 00 e8 fa f1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2b e3 b1 5e 48 b8 00 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 c8 70 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8cbd980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d9 cb c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa f1 b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b e3 b1 5e}
0055h mov rax,7ff7c762ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c87470c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 70 74 c8 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 f0 de cb c8 f7 7f 00 00 e8 ea ef b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b e1 b1 5e 48 b8 00 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 90 71 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8cbdef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 de cb c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea ef b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b e1 b1 5e}
0055h mov rax,7ff7c762ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8747190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 71 74 c8 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 80 e2 cb c8 f7 7f 00 00 e8 da e9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b db b1 5e 48 b8 00 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 08 72 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8cbe280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e2 cb c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da e9 b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b db b1 5e}
0055h mov rax,7ff7c762ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8747208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 72 74 c8 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 10 e6 cb c8 f7 7f 00 00 e8 ca e7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb d8 b1 5e 48 b8 00 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 e0 7e 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8cbe610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e6 cb c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca e7 b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb d8 b1 5e}
0055h mov rax,7ff7c762ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8747ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 7e 74 c8 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 a0 e9 cb c8 f7 7f 00 00 e8 ba e5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb d6 b1 5e 48 b8 00 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 58 7f 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8cbe9a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e9 cb c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba e5 b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb d6 b1 5e}
0055h mov rax,7ff7c762ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8747f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 7f 74 c8 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 30 ed cb c8 f7 7f 00 00 e8 aa e3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db d4 b1 5e 48 b8 00 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 d0 7f 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8cbed30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ed cb c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa e3 b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db d4 b1 5e}
0055h mov rax,7ff7c762ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8747fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 7f 74 c8 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 c0 f0 cb c8 f7 7f 00 00 e8 9a e1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cb d2 b1 5e 48 b8 00 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 48 80 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8cbf0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f0 cb c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a e1 b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb d2 b1 5e}
0055h mov rax,7ff7c762ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c8748048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 80 74 c8 f7 7f 00 00}
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
; lookup_gn256_ShiftOpKind~8u[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 50 f4 cb c8 f7 7f 00 00 e8 8a df b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb d0 b1 5e 48 b8 00 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 c0 80 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8cbf450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f4 cb c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a df b1 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb d0 b1 5e}
0055h mov rax,7ff7c762ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c87480c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 80 74 c8 f7 7f 00 00}
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
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 40 bf aa c8 f7 7f 00 00 e8 82 d9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 ca b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 bc 73 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 40 bf aa c8 f7 7f 00 00 e8 43 d9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 ca b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 be 73 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 40 bf aa c8 f7 7f 00 00 e8 04 d9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 ca b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 be 73 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 40 bf aa c8 f7 7f 00 00 e8 c5 d8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 c9 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 bc 73 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 40 bf aa c8 f7 7f 00 00 e8 86 d8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 c9 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 bd 73 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 40 bf aa c8 f7 7f 00 00 e8 47 d8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 c9 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 bd 73 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 40 bf aa c8 f7 7f 00 00 e8 08 d8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 c9 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 bd 73 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 40 bf aa c8 f7 7f 00 00 e8 c9 d7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa c8 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 bd 73 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 40 bf aa c8 f7 7f 00 00 e8 8a d7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb c8 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 be 73 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 40 bf aa c8 f7 7f 00 00 e8 4b d7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c c8 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 bd 73 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 40 bf aa c8 f7 7f 00 00 e8 0c d7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d c8 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 bd 73 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 40 bf aa c8 f7 7f 00 00 e8 cd d6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe c7 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 bd 73 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 40 bf aa c8 f7 7f 00 00 e8 8e d6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf c7 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 bd 73 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 40 bf aa c8 f7 7f 00 00 e8 4f d6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 80 c7 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 be 73 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 40 bf aa c8 f7 7f 00 00 e8 13 d6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 c7 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 bc 73 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 40 bf aa c8 f7 7f 00 00 e8 d7 d5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 c7 b1 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 48 be 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8aabf40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 bf aa c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 d9 b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 ca b1 5e}
004dh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c873bca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bc 73 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8aabf40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 bf aa c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 d9 b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 ca b1 5e}
008ch mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c873be88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 be 73 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8aabf40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 bf aa c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 d9 b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 ca b1 5e}
00cbh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c873be68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 be 73 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8aabf40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 bf aa c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 d8 b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 c9 b1 5e}
010ah mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c873bcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 bc 73 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8aabf40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 bf aa c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 d8 b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 c9 b1 5e}
0149h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c873bda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bd 73 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8aabf40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 bf aa c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 d8 b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 c9 b1 5e}
0188h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c873bd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 bd 73 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8aabf40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 bf aa c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 d8 b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 c9 b1 5e}
01c7h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c873bdc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 bd 73 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8aabf40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 bf aa c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 d7 b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa c8 b1 5e}
0206h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c873bd68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bd 73 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8aabf40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 bf aa c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a d7 b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb c8 b1 5e}
0245h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c873be28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 be 73 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8aabf40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 bf aa c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b d7 b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c c8 b1 5e}
0284h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c873bde8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 bd 73 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8aabf40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 bf aa c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c d7 b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d c8 b1 5e}
02c3h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c873bd08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 bd 73 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8aabf40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 bf aa c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd d6 b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe c7 b1 5e}
0302h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c873bd48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 bd 73 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8aabf40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 bf aa c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e d6 b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf c7 b1 5e}
0341h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c873bd28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bd 73 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8aabf40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 bf aa c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f d6 b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 c7 b1 5e}
0380h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c873be08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 be 73 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8aabf40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 bf aa c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 d6 b1 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 c7 b1 5e}
03bch mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c873bce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 bc 73 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8aabf40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 bf aa c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 d5 b1 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 c7 b1 5e}
03f8h mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c873be48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 be 73 c8 f7 7f 00 00}
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
; lookup_gn128_BinaryBitLogicKind~8u[158] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 10 bc aa c8 f7 7f 00 00 e8 72 d4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 c5 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 c2 73 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 10 bc aa c8 f7 7f 00 00 e8 33 d4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 c5 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 c3}
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
002fh mov rcx,7ff7c8aabc10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 bc aa c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 d4 b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 c5 b1 5e}
004dh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c873c288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c2 73 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8aabc10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 bc aa c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 d4 b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 c5 b1 5e}
008ch mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah (bad)                                   ; <invalid> || <invalid> || encoded[4]{48 b9 78 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ushort>> lookup<ushort>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_BinaryBitLogicKind~8u[95] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 b0 b8 aa c8 f7 7f 00 00 e8 62 cf b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 c0 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 c3}
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
002fh mov rcx,7ff7c8aab8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 b8 aa c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 cf b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 c0 b1 5e}
004dh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh (bad)                                   ; <invalid> || <invalid> || encoded[4]{48 b9 98 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<short>> lookup<short>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 00 b7 aa c8 f7 7f 00 00 e8 52 ca b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 bb b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 c4 73 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 00 b7 aa c8 f7 7f 00 00 e8 13 ca b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 bb b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 c5 73 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 00 b7 aa c8 f7 7f 00 00 e8 d4 c9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 bb b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 c5 73 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 00 b7 aa c8 f7 7f 00 00 e8 95 c9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 ba b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 c4 73 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 00 b7 aa c8 f7 7f 00 00 e8 56 c9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 ba b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 c5 73 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 00 b7 aa c8 f7 7f 00 00 e8 17 c9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 ba b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 c5 73 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 00 b7 aa c8 f7 7f 00 00 e8 d8 c8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 ba b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 c5 73 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 00 b7 aa c8 f7 7f 00 00 e8 99 c8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca b9 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 c5 73 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 00 b7 aa c8 f7 7f 00 00 e8 5a c8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b b9 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 c5 73 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 00 b7 aa c8 f7 7f 00 00 e8 1b c8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c b9 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 c5 73 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 00 b7 aa c8 f7 7f 00 00 e8 dc c7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d b9 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 c4 73 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 00 b7 aa c8 f7 7f 00 00 e8 9d c7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce b8 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 c4 73 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 00 b7 aa c8 f7 7f 00 00 e8 5e c7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f b8 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 c4 73 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 00 b7 aa c8 f7 7f 00 00 e8 1f c7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 b8 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 c5 73 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 00 b7 aa c8 f7 7f 00 00 e8 e3 c6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 b8 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 c4 73 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 00 b7 aa c8 f7 7f 00 00 e8 a7 c6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 b7 b1 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 78 c5 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8aab700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 b7 aa c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 ca b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 bb b1 5e}
004dh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c873c4a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c4 73 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8aab700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 b7 aa c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 ca b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 bb b1 5e}
008ch mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c873c598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c5 73 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8aab700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 b7 aa c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 c9 b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 bb b1 5e}
00cbh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c873c588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c5 73 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8aab700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 b7 aa c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 c9 b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 ba b1 5e}
010ah mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c873c4b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c4 73 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8aab700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 b7 aa c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 c9 b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 ba b1 5e}
0149h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c873c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 73 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8aab700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 b7 aa c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 c9 b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 ba b1 5e}
0188h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c873c518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c5 73 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8aab700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 b7 aa c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 c8 b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 ba b1 5e}
01c7h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c873c538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 c5 73 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8aab700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 b7 aa c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 c8 b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca b9 b1 5e}
0206h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c873c508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c5 73 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8aab700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 b7 aa c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a c8 b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b b9 b1 5e}
0245h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c873c568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 c5 73 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8aab700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 b7 aa c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b c8 b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c b9 b1 5e}
0284h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c873c548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c5 73 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8aab700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 b7 aa c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc c7 b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d b9 b1 5e}
02c3h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c873c4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 c4 73 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8aab700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 b7 aa c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d c7 b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce b8 b1 5e}
0302h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c873c4f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 c4 73 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8aab700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 b7 aa c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e c7 b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f b8 b1 5e}
0341h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c873c4e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c4 73 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8aab700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 b7 aa c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f c7 b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 b8 b1 5e}
0380h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c873c558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c5 73 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8aab700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 b7 aa c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 c6 b1 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 b8 b1 5e}
03bch mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c873c4c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 c4 73 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8aab700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 b7 aa c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 c6 b1 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 b7 b1 5e}
03f8h mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c873c578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 c5 73 c8 f7 7f 00 00}
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
; lookup_gn128_BinaryBitLogicKind~8u[438] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 50 ca aa c8 f7 7f 00 00 e8 42 c5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 b6 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 c5 73 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 50 ca aa c8 f7 7f 00 00 e8 03 c5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 b6 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 d2 73 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 50 ca aa c8 f7 7f 00 00 e8 c4 c4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 b5 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 d2 73 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 50 ca aa c8 f7 7f 00 00 e8 85 c4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 b5 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 c5 73 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 50 ca aa c8 f7 7f 00 00 e8 46 c4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 b5 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 c6 73 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 50 ca aa c8 f7 7f 00 00 e8 07 c4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 b5 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 c6 73 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 50 ca aa c8 f7 7f 00 00 e8 c8 c3}
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
002fh mov rcx,7ff7c8aaca50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ca aa c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 c5 b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 b6 b1 5e}
004dh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c873c5b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c5 73 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8aaca50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ca aa c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 c5 b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 b6 b1 5e}
008ch mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c873d230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 d2 73 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8aaca50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ca aa c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 c4 b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 b5 b1 5e}
00cbh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c873d220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 d2 73 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8aaca50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ca aa c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 c4 b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 b5 b1 5e}
010ah mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c873c5c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 c5 73 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8aaca50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ca aa c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 c4 b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 b5 b1 5e}
0149h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c873c638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 c6 73 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8aaca50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ca aa c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 c4 b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 b5 b1 5e}
0188h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c873c628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c6 73 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8aaca50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ca aa c8 f7 7f 00 00}
01b3h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 c8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<int>> lookup<int>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_BinaryBitLogicKind~8u[938] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 20 c7 aa c8 f7 7f 00 00 e8 32 c0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 b1 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 d2 73 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 20 c7 aa c8 f7 7f 00 00 e8 f3 bf b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 b1 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 d3 73 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 20 c7 aa c8 f7 7f 00 00 e8 b4 bf b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 b0 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 d3 73 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 20 c7 aa c8 f7 7f 00 00 e8 75 bf b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 b0 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 d2 73 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 20 c7 aa c8 f7 7f 00 00 e8 36 bf b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 b0 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 d2 73 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 20 c7 aa c8 f7 7f 00 00 e8 f7 be b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 b0 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 d2 73 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 20 c7 aa c8 f7 7f 00 00 e8 b8 be b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 af b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 d2 73 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 20 c7 aa c8 f7 7f 00 00 e8 79 be b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa af b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 d2 73 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 20 c7 aa c8 f7 7f 00 00 e8 3a be b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b af b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 d3 73 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 20 c7 aa c8 f7 7f 00 00 e8 fb bd b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c af b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 d2 73 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 20 c7 aa c8 f7 7f 00 00 e8 bc bd b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed ae b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 d2 73 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 20 c7 aa c8 f7 7f 00 00 e8 7d bd b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae ae b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 d2 73 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 20 c7 aa c8 f7 7f 00 00 e8 3e bd b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f ae b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 d2 73 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 20 c7 aa c8 f7 7f 00 00 e8 ff bc b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 ae b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 d3 73 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 20 c7 aa c8 f7 7f 00 00 e8 c3}
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
002fh mov rcx,7ff7c8aac720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c7 aa c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 c0 b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 b1 b1 5e}
004dh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c873d250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d2 73 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8aac720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c7 aa c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 bf b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 b1 b1 5e}
008ch mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c873d340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d3 73 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8aac720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c7 aa c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 bf b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 b0 b1 5e}
00cbh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c873d330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 d3 73 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8aac720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c7 aa c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 bf b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 b0 b1 5e}
010ah mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c873d260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d2 73 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8aac720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c7 aa c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 bf b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 b0 b1 5e}
0149h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c873d2d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d2 73 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8aac720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c7 aa c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 be b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 b0 b1 5e}
0188h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c873d2c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d2 73 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8aac720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c7 aa c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 be b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 af b1 5e}
01c7h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c873d2e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d2 73 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8aac720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c7 aa c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 be b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa af b1 5e}
0206h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c873d2b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 d2 73 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8aac720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c7 aa c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a be b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b af b1 5e}
0245h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c873d310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d3 73 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8aac720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c7 aa c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb bd b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c af b1 5e}
0284h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c873d2f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 d2 73 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8aac720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c7 aa c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc bd b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed ae b1 5e}
02c3h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c873d280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d2 73 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8aac720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c7 aa c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d bd b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae ae b1 5e}
0302h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c873d2a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d2 73 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8aac720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c7 aa c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e bd b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f ae b1 5e}
0341h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c873d290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 d2 73 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8aac720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c7 aa c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff bc b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 ae b1 5e}
0380h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c873d300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d3 73 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8aac720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c7 aa c8 f7 7f 00 00}
03a8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ulong>> lookup<ulong>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 70 c2 aa c8 f7 7f 00 00 e8 22 bb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 ac b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 d3 73 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 70 c2 aa c8 f7 7f 00 00 e8 e3 ba b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 ac b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 d4 73 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 70 c2 aa c8 f7 7f 00 00 e8 a4 ba b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 ab b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 d4 73 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 70 c2 aa c8 f7 7f 00 00 e8 65 ba b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 ab b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 d3 73 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 70 c2 aa c8 f7 7f 00 00 e8 26 ba b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 ab b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 d3 73 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 70 c2 aa c8 f7 7f 00 00 e8 e7 b9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 ab b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 d3 73 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 70 c2 aa c8 f7 7f 00 00 e8 a8 b9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 aa b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 d3 73 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 70 c2 aa c8 f7 7f 00 00 e8 69 b9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a aa b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 d3 73 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 70 c2 aa c8 f7 7f 00 00 e8 2a b9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b aa b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 d4 73 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 70 c2 aa c8 f7 7f 00 00 e8 eb b8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c aa b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 d4 73 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 70 c2 aa c8 f7 7f 00 00 e8 ac b8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd a9 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 d3 73 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 70 c2 aa c8 f7 7f 00 00 e8 6d b8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e a9 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 d3 73 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 70 c2 aa c8 f7 7f 00 00 e8 2e b8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f a9 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 d3 73 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 70 c2 aa c8 f7 7f 00 00 e8 ef b7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 a9 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 d4 73 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 70 c2 aa c8 f7 7f 00 00 e8 b3 b7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 a8 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 d3 73 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 70 c2 aa c8 f7 7f 00 00 e8 77 b7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 a8 b1 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 30 d4 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8aac270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c2 aa c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 bb b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 ac b1 5e}
004dh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c873d360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d3 73 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8aac270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c2 aa c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 ba b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 ac b1 5e}
008ch mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c873d450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d4 73 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8aac270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c2 aa c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 ba b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 ab b1 5e}
00cbh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c873d440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d4 73 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8aac270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c2 aa c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 ba b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 ab b1 5e}
010ah mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c873d370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d3 73 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8aac270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c2 aa c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 ba b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 ab b1 5e}
0149h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c873d3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d3 73 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8aac270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c2 aa c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 b9 b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 ab b1 5e}
0188h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c873d3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d3 73 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8aac270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c2 aa c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 b9 b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 aa b1 5e}
01c7h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c873d3f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 d3 73 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8aac270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c2 aa c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 b9 b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a aa b1 5e}
0206h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c873d3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d3 73 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8aac270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c2 aa c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a b9 b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b aa b1 5e}
0245h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c873d420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 d4 73 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8aac270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c2 aa c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb b8 b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c aa b1 5e}
0284h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c873d400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d4 73 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8aac270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c2 aa c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac b8 b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd a9 b1 5e}
02c3h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c873d390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 d3 73 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8aac270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c2 aa c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d b8 b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e a9 b1 5e}
0302h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c873d3b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 d3 73 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8aac270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c2 aa c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e b8 b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f a9 b1 5e}
0341h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c873d3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d3 73 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8aac270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c2 aa c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef b7 b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 a9 b1 5e}
0380h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c873d410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d4 73 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8aac270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c2 aa c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 b7 b1 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 a8 b1 5e}
03bch mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c873d380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d3 73 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8aac270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c2 aa c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 b7 b1 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 a8 b1 5e}
03f8h mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c873d430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 d4 73 c8 f7 7f 00 00}
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
; lookup_gn128_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 80 cd aa c8 f7 7f 00 00 e8 12 b6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 a7 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 d4 73 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 80 cd aa c8 f7 7f 00 00 e8 d3 b5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 a7 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 d5 73 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 80 cd aa c8 f7 7f 00 00 e8 94 b5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 a6 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 d5 73 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 80 cd aa c8 f7 7f 00 00 e8 55 b5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 86 a6 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 d4 73 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 80 cd aa c8 f7 7f 00 00 e8 16 b5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 47 a6 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 d4 73 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 80 cd aa c8 f7 7f 00 00 e8 d7 b4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 a6 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 d4 73 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 80 cd aa c8 f7 7f 00 00 e8 98 b4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 a5 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 d5 73 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 80 cd aa c8 f7 7f 00 00 e8 59 b4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8a a5 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 d4 73 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 80 cd aa c8 f7 7f 00 00 e8 1a b4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b a5 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 d5 73 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 80 cd aa c8 f7 7f 00 00 e8 db b3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c a5 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 d5 73 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 80 cd aa c8 f7 7f 00 00 e8 9c b3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd a4 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 d4 73 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 80 cd aa c8 f7 7f 00 00 e8 5d b3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8e a4 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 d4 73 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 80 cd aa c8 f7 7f 00 00 e8 1e b3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4f a4 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 d4 73 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 80 cd aa c8 f7 7f 00 00 e8 df b2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 10 a4 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 d5 73 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 80 cd aa c8 f7 7f 00 00 e8 a3 b2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 a3 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 d4 73 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 80 cd aa c8 f7 7f 00 00 e8 67 b2 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 a3 b1 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 40 d5 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8aacd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 cd aa c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 b6 b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 a7 b1 5e}
004dh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c873d470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d4 73 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8aacd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 cd aa c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 b5 b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 a7 b1 5e}
008ch mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c873d560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d5 73 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8aacd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 cd aa c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 b5 b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 a6 b1 5e}
00cbh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c873d550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d5 73 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8aacd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 cd aa c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 b5 b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 a6 b1 5e}
010ah mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c873d480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d4 73 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8aacd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 cd aa c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 b5 b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 a6 b1 5e}
0149h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c873d4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 d4 73 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8aacd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 cd aa c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 b4 b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 a6 b1 5e}
0188h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c873d4e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d4 73 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8aacd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 cd aa c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 b4 b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 a5 b1 5e}
01c7h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c873d500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d5 73 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8aacd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 cd aa c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 b4 b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a a5 b1 5e}
0206h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c873d4d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d4 73 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8aacd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 cd aa c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a b4 b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b a5 b1 5e}
0245h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c873d530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 d5 73 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8aacd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 cd aa c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db b3 b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c a5 b1 5e}
0284h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c873d510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d5 73 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8aacd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 cd aa c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c b3 b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd a4 b1 5e}
02c3h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c873d4a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d4 73 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8aacd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 cd aa c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d b3 b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e a4 b1 5e}
0302h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c873d4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d4 73 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8aacd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 cd aa c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e b3 b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f a4 b1 5e}
0341h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c873d4b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 d4 73 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8aacd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 cd aa c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df b2 b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 a4 b1 5e}
0380h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c873d520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 d5 73 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8aacd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 cd aa c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 b2 b1 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 a3 b1 5e}
03bch mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c873d490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 d4 73 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8aacd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 cd aa c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 b2 b1 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 a3 b1 5e}
03f8h mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c873d540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 d5 73 c8 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[122] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 80 ed aa c8 f7 7f 00 00 e8 02 b1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 a2 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 d5 73 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 80 ed aa c8 f7 7f 00 00 e8 c3}
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
002fh mov rcx,7ff7c8aaed80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ed aa c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 b1 b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 a2 b1 5e}
004dh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c873d5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d5 73 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8aaed80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ed aa c8 f7 7f 00 00}
0078h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 50 ea aa c8 f7 7f 00 00 e8 f2 ab b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 9d b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 e4 73 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 50 ea aa c8 f7 7f 00 00 e8 b3 ab b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 9c b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 e8 73 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 50 ea aa c8 f7 7f 00 00 e8 74 ab b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 9c b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 e8 73 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 50 ea aa c8 f7 7f 00 00 e8 35 ab b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 66 9c b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 e4 73 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 50 ea aa c8 f7 7f 00 00 e8 f6 aa b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 27 9c b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 e5 73 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 50 ea aa c8 f7 7f 00 00 e8 b7 aa b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 9b b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 e4 73 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 50 ea aa c8 f7 7f 00 00 e8 78 aa b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 9b b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 e5 73 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 50 ea aa c8 f7 7f 00 00 e8 39 aa b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6a 9b b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 e4 73 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 50 ea aa c8 f7 7f 00 00 e8 fa a9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2b 9b b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 e5 73 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 50 ea aa c8 f7 7f 00 00 e8 bb a9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec 9a b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 e5 73 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 50 ea aa c8 f7 7f 00 00 e8 7c a9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad 9a b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 e4 73 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 50 ea aa c8 f7 7f 00 00 e8 3d a9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6e 9a b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 e4 73 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 50 ea aa c8 f7 7f 00 00 e8 fe a8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2f 9a b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 e4 73 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 50 ea aa c8 f7 7f 00 00 e8 bf a8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f0 99 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 e5 73 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 50 ea aa c8 f7 7f 00 00 e8 83 a8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 99 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 e4 73 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 50 ea aa c8 f7 7f 00 00 e8 47 a8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 99 b1 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 50 e5 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8aaea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea aa c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 ab b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 9d b1 5e}
004dh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c873e480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e4 73 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8aaea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea aa c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 ab b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 9c b1 5e}
008ch mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c873e868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 e8 73 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8aaea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea aa c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 ab b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 9c b1 5e}
00cbh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c873e858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e8 73 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8aaea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea aa c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 ab b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 9c b1 5e}
010ah mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c873e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 73 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8aaea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea aa c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 aa b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 9c b1 5e}
0149h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c873e500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e5 73 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8aaea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea aa c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 aa b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 9b b1 5e}
0188h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c873e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 73 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8aaea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea aa c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 aa b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 9b b1 5e}
01c7h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c873e510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e5 73 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8aaea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea aa c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 aa b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 9b b1 5e}
0206h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c873e4e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e4 73 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8aaea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea aa c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa a9 b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 9b b1 5e}
0245h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c873e540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e5 73 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8aaea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea aa c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb a9 b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 9a b1 5e}
0284h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c873e520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e5 73 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8aaea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea aa c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c a9 b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 9a b1 5e}
02c3h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c873e4b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 e4 73 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8aaea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea aa c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d a9 b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 9a b1 5e}
0302h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c873e4d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e4 73 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8aaea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea aa c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe a8 b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 9a b1 5e}
0341h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c873e4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e4 73 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8aaea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea aa c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf a8 b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 99 b1 5e}
0380h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c873e530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e5 73 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8aaea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea aa c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 a8 b1 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 99 b1 5e}
03bch mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c873e4a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e4 73 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8aaea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea aa c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 a8 b1 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 99 b1 5e}
03f8h mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c873e550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e5 73 c8 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 e8 4c aa c8 f7 7f 00 00 e8 e2 a6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 98 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 e8 73 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 e8 4c aa c8 f7 7f 00 00 e8 a3 a6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 97 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 e9 73 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 e8 4c aa c8 f7 7f 00 00 e8 64 a6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 97 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 e9 73 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 e8 4c aa c8 f7 7f 00 00 e8 25 a6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 97 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 e8 73 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 e8 4c aa c8 f7 7f 00 00 e8 e6 a5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 97 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 e9 73 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 e8 4c aa c8 f7 7f 00 00 e8 a7 a5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 96 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 e8 73 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 e8 4c aa c8 f7 7f 00 00 e8 68 a5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 96 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 e9 73 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 e8 4c aa c8 f7 7f 00 00 e8 29 a5 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a 96 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 e8 73 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 e8 4c aa c8 f7 7f 00 00 e8 ea a4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b 96 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 e9 73 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 e8 4c aa c8 f7 7f 00 00 e8 ab a4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dc 95 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 e9 73 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 e8 4c aa c8 f7 7f 00 00 e8 6c a4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d 95 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 e8 73 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e8 4c aa c8 f7 7f 00 00 e8 2d a4 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5e 95 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 e8 73 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e8 4c aa c8 f7 7f 00 00 e8 ee a3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1f 95 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 e8 73 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e8 4c aa c8 f7 7f 00 00 e8 af a3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e0 94 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 e9 73 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e8 4c aa c8 f7 7f 00 00 e8 73 a3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 94 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 e8 73 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e8 4c aa c8 f7 7f 00 00 e8 37 a3 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 94 b1 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 58 e9 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8aa4ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 4c aa c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 a6 b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 98 b1 5e}
004dh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c873e888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 e8 73 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8aa4ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 4c aa c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 a6 b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 97 b1 5e}
008ch mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c873e978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 e9 73 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8aa4ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 4c aa c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 a6 b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 97 b1 5e}
00cbh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c873e968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 e9 73 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8aa4ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 4c aa c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 a6 b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 97 b1 5e}
010ah mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c873e898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e8 73 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8aa4ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 4c aa c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 a5 b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 97 b1 5e}
0149h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c873e908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e9 73 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8aa4ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 4c aa c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 a5 b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 96 b1 5e}
0188h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c873e8f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 e8 73 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8aa4ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 4c aa c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 a5 b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 96 b1 5e}
01c7h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c873e918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e9 73 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8aa4ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 4c aa c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 a5 b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 96 b1 5e}
0206h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c873e8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 e8 73 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8aa4ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 4c aa c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea a4 b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 96 b1 5e}
0245h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c873e948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e9 73 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8aa4ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 4c aa c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab a4 b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 95 b1 5e}
0284h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c873e928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 e9 73 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8aa4ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 4c aa c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c a4 b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 95 b1 5e}
02c3h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c873e8b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 e8 73 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8aa4ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 4c aa c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d a4 b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 95 b1 5e}
0302h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c873e8d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e8 73 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8aa4ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 4c aa c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee a3 b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 95 b1 5e}
0341h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c873e8c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 e8 73 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8aa4ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 4c aa c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af a3 b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 94 b1 5e}
0380h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c873e938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e9 73 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8aa4ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 4c aa c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 a3 b1 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 94 b1 5e}
03bch mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c873e8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 e8 73 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8aa4ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 4c aa c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 a3 b1 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 94 b1 5e}
03f8h mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c873e958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 e9 73 c8 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 60 ba aa c8 f7 7f 00 00 e8 d2 a1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 93 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 e9 73 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 60 ba aa c8 f7 7f 00 00 e8 93 a1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 92 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 ea 73 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 60 ba aa c8 f7 7f 00 00 e8 54 a1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 92 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 ea 73 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 60 ba aa c8 f7 7f 00 00 e8 15 a1 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 92 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 e9 73 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 60 ba aa c8 f7 7f 00 00 e8 d6 a0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 92 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 ea 73 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 60 ba aa c8 f7 7f 00 00 e8 97 a0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 91 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 ea 73 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 60 ba aa c8 f7 7f 00 00 e8 58 a0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 91 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 ea 73 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 60 ba aa c8 f7 7f 00 00 e8 19 a0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 91 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 e9 73 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 60 ba aa c8 f7 7f 00 00 e8 da 9f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 91 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 ea 73 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 60 ba aa c8 f7 7f 00 00 e8 9b 9f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 90 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 ea 73 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 60 ba aa c8 f7 7f 00 00 e8 5c 9f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 90 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 e9 73 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 60 ba aa c8 f7 7f 00 00 e8 1d 9f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 90 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 e9 73 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 60 ba aa c8 f7 7f 00 00 e8 de 9e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 90 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 e9 73 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 60 ba aa c8 f7 7f 00 00 e8 9f 9e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 8f b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 ea 73 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 60 ba aa c8 f7 7f 00 00 e8 63 9e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 8f b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 e9 73 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 60 ba aa c8 f7 7f 00 00 e8 27 9e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 8f b1 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 68 ea 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8aaba60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ba aa c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 a1 b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 93 b1 5e}
004dh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c873e998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e9 73 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8aaba60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ba aa c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 a1 b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 92 b1 5e}
008ch mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c873ea88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ea 73 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8aaba60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ba aa c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 a1 b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 92 b1 5e}
00cbh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c873ea78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ea 73 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8aaba60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ba aa c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 a1 b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 92 b1 5e}
010ah mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c873e9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 e9 73 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8aaba60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ba aa c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 a0 b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 92 b1 5e}
0149h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c873ea18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ea 73 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8aaba60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ba aa c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 a0 b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 91 b1 5e}
0188h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c873ea08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ea 73 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8aaba60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ba aa c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 a0 b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 91 b1 5e}
01c7h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c873ea28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ea 73 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8aaba60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ba aa c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 a0 b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 91 b1 5e}
0206h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c873e9f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 e9 73 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8aaba60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ba aa c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 9f b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 91 b1 5e}
0245h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c873ea58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 ea 73 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8aaba60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ba aa c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 9f b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 90 b1 5e}
0284h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c873ea38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ea 73 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8aaba60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ba aa c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 9f b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 90 b1 5e}
02c3h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c873e9c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 e9 73 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8aaba60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ba aa c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 9f b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 90 b1 5e}
0302h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c873e9e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 e9 73 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8aaba60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ba aa c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 9e b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 90 b1 5e}
0341h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c873e9d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e9 73 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8aaba60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ba aa c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 9e b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 8f b1 5e}
0380h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c873ea48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ea 73 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8aaba60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ba aa c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 9e b1 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 8f b1 5e}
03bch mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c873e9b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 e9 73 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8aaba60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ba aa c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 9e b1 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 8f b1 5e}
03f8h mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c873ea68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 ea 73 c8 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 c0 f7 aa c8 f7 7f 00 00 e8 c2 9c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 8d b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 ea 73 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c0 f7 aa c8 f7 7f 00 00 e8 83 9c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 8d b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 eb 73 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 c0 f7 aa c8 f7 7f 00 00 e8 44 9c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 8d b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 eb 73 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 c0 f7 aa c8 f7 7f 00 00 e8 05 9c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 8d b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 ea 73 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 c0 f7 aa c8 f7 7f 00 00 e8 c6 9b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 8c b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 eb 73 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 c0 f7 aa c8 f7 7f 00 00 e8 87 9b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 8c b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 eb 73 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 c0 f7 aa c8 f7 7f 00 00 e8 48 9b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 8c b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 eb 73 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 c0 f7 aa c8 f7 7f 00 00 e8 09 9b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3a 8c b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 eb 73 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 c0 f7 aa c8 f7 7f 00 00 e8 ca 9a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb 8b b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 eb 73 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 c0 f7 aa c8 f7 7f 00 00 e8 8b 9a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc 8b b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 eb 73 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 c0 f7 aa c8 f7 7f 00 00 e8 4c 9a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7d 8b b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 ea 73 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c0 f7 aa c8 f7 7f 00 00 e8 0d 9a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3e 8b b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 ea 73 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c0 f7 aa c8 f7 7f 00 00 e8 ce 99 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ff 8a b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 ea 73 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c0 f7 aa c8 f7 7f 00 00 e8 8f 99 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c0 8a b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 eb 73 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c0 f7 aa c8 f7 7f 00 00 e8 53 99 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 84 8a b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 ea 73 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c0 f7 aa c8 f7 7f 00 00 e8 17 99 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 8a b1 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 78 eb 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8aaf7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f7 aa c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 9c b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 8d b1 5e}
004dh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c873eaa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ea 73 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8aaf7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f7 aa c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 9c b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 8d b1 5e}
008ch mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c873eb98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 eb 73 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8aaf7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f7 aa c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 9c b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 8d b1 5e}
00cbh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c873eb88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 eb 73 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8aaf7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f7 aa c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 9c b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 8d b1 5e}
010ah mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c873eab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 ea 73 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8aaf7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f7 aa c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 9b b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 8c b1 5e}
0149h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c873eb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 eb 73 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8aaf7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f7 aa c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 9b b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 8c b1 5e}
0188h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c873eb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 eb 73 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8aaf7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f7 aa c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 9b b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 8c b1 5e}
01c7h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c873eb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 eb 73 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8aaf7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f7 aa c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 9b b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 8c b1 5e}
0206h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c873eb08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 eb 73 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8aaf7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f7 aa c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 9a b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 8b b1 5e}
0245h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c873eb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 eb 73 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8aaf7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f7 aa c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 9a b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 8b b1 5e}
0284h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c873eb48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 eb 73 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8aaf7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f7 aa c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 9a b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 8b b1 5e}
02c3h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c873ead8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ea 73 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8aaf7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f7 aa c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 9a b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 8b b1 5e}
0302h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c873eaf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ea 73 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8aaf7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f7 aa c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 99 b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 8a b1 5e}
0341h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c873eae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ea 73 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8aaf7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f7 aa c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 99 b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 8a b1 5e}
0380h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c873eb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 eb 73 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8aaf7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f7 aa c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 99 b1 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 8a b1 5e}
03bch mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c873eac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ea 73 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8aaf7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f7 aa c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 99 b1 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 8a b1 5e}
03f8h mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c873eb78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 eb 73 c8 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 90 f4 aa c8 f7 7f 00 00 e8 b2 97 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 88 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 eb 73 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 90 f4 aa c8 f7 7f 00 00 e8 73 97 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 88 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 f8 73 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 90 f4 aa c8 f7 7f 00 00 e8 34 97 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 88 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 f8 73 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 90 f4 aa c8 f7 7f 00 00 e8 f5 96 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 88 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 eb 73 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 90 f4 aa c8 f7 7f 00 00 e8 b6 96 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 87 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 ec 73 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 90 f4 aa c8 f7 7f 00 00 e8 77 96 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 87 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 ec 73 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 90 f4 aa c8 f7 7f 00 00 e8 38 96 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 87 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 ec 73 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 90 f4 aa c8 f7 7f 00 00 e8 f9 95 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2a 87 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 ec 73 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 90 f4 aa c8 f7 7f 00 00 e8 ba 95 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb 86 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 f8 73 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 90 f4 aa c8 f7 7f 00 00 e8 7b 95 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac 86 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 f8 73 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 90 f4 aa c8 f7 7f 00 00 e8 3c 95 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d 86 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 eb 73 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 90 f4 aa c8 f7 7f 00 00 e8 fd 94 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2e 86 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 ec 73 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 90 f4 aa c8 f7 7f 00 00 e8 be 94 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ef 85 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 eb 73 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 90 f4 aa c8 f7 7f 00 00 e8 7f 94 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b0 85 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 f8 73 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 90 f4 aa c8 f7 7f 00 00 e8 43 94 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 85 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 eb 73 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 90 f4 aa c8 f7 7f 00 00 e8 07 94 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 85 b1 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 48 f8 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8aaf490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f4 aa c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 97 b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 88 b1 5e}
004dh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c873ebb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 eb 73 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8aaf490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f4 aa c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 97 b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 88 b1 5e}
008ch mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c873f868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 f8 73 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8aaf490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f4 aa c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 97 b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 88 b1 5e}
00cbh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c873f858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f8 73 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8aaf490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f4 aa c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 96 b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 88 b1 5e}
010ah mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c873ebc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 eb 73 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8aaf490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f4 aa c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 96 b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 87 b1 5e}
0149h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c873ec38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ec 73 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8aaf490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f4 aa c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 96 b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 87 b1 5e}
0188h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c873ec28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ec 73 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8aaf490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f4 aa c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 96 b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 87 b1 5e}
01c7h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c873ec48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ec 73 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8aaf490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f4 aa c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 95 b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 87 b1 5e}
0206h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c873ec18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ec 73 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8aaf490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f4 aa c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 95 b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 86 b1 5e}
0245h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c873f838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f8 73 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8aaf490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f4 aa c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 95 b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 86 b1 5e}
0284h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c873f818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f8 73 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8aaf490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f4 aa c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 95 b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 86 b1 5e}
02c3h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c873ebe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 eb 73 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8aaf490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f4 aa c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 94 b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 86 b1 5e}
0302h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c873ec08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ec 73 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8aaf490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f4 aa c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 94 b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 85 b1 5e}
0341h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c873ebf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 eb 73 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8aaf490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f4 aa c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 94 b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 85 b1 5e}
0380h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c873f828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 f8 73 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8aaf490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f4 aa c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 94 b1 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 85 b1 5e}
03bch mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c873ebd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 eb 73 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8aaf490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f4 aa c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 94 b1 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 85 b1 5e}
03f8h mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c873f848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 f8 73 c8 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 20 fe aa c8 f7 7f 00 00 e8 a2 92 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 83 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 f8 73 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 20 fe aa c8 f7 7f 00 00 e8 63 92 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 83 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 f9 73 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 20 fe aa c8 f7 7f 00 00 e8 24 92 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 83 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 f9 73 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 20 fe aa c8 f7 7f 00 00 e8 e5 91 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 16 83 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 f8 73 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 20 fe aa c8 f7 7f 00 00 e8 a6 91 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d7 82 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 f9 73 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 20 fe aa c8 f7 7f 00 00 e8 67 91 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 82 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 f8 73 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 20 fe aa c8 f7 7f 00 00 e8 28 91 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 82 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 f9 73 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 20 fe aa c8 f7 7f 00 00 e8 e9 90 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1a 82 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 f8 73 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 20 fe aa c8 f7 7f 00 00 e8 aa 90 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db 81 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 f9 73 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 20 fe aa c8 f7 7f 00 00 e8 6b 90 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c 81 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 f9 73 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 20 fe aa c8 f7 7f 00 00 e8 2c 90 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d 81 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 f8 73 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 20 fe aa c8 f7 7f 00 00 e8 ed 8f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1e 81 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 f8 73 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 20 fe aa c8 f7 7f 00 00 e8 ae 8f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 df 80 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 f8 73 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 20 fe aa c8 f7 7f 00 00 e8 6f 8f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a0 80 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 f9 73 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 20 fe aa c8 f7 7f 00 00 e8 33 8f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 80 b1 5e 48 b9 f0 e1 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 f8 73 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 20 fe aa c8 f7 7f 00 00 e8 f7 8e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 80 b1 5e 48 b8 f0 e1 62 c7 f7 7f 00 00 48 89 46 18 48 b8 58 f9 73 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c8aafe20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fe aa c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 92 b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 83 b1 5e}
004dh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c873f888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 f8 73 c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c8aafe20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fe aa c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 92 b1 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 83 b1 5e}
008ch mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c873f978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f9 73 c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c8aafe20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fe aa c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 92 b1 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 83 b1 5e}
00cbh mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c873f968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 f9 73 c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c8aafe20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fe aa c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 91 b1 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 83 b1 5e}
010ah mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c873f898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f8 73 c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c8aafe20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fe aa c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 91 b1 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 82 b1 5e}
0149h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c873f908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f9 73 c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c8aafe20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fe aa c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 91 b1 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 82 b1 5e}
0188h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c873f8f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 f8 73 c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c8aafe20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fe aa c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 91 b1 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 82 b1 5e}
01c7h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c873f918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f9 73 c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c8aafe20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fe aa c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 90 b1 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 82 b1 5e}
0206h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c873f8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 73 c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c8aafe20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fe aa c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 90 b1 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 81 b1 5e}
0245h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c873f948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f9 73 c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c8aafe20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fe aa c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 90 b1 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 81 b1 5e}
0284h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c873f928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 f9 73 c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c8aafe20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fe aa c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 90 b1 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 81 b1 5e}
02c3h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c873f8b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f8 73 c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c8aafe20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fe aa c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 8f b1 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 81 b1 5e}
0302h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c873f8d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f8 73 c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c8aafe20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fe aa c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 8f b1 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 80 b1 5e}
0341h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c873f8c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f8 73 c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c8aafe20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fe aa c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 8f b1 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 80 b1 5e}
0380h mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c873f938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f9 73 c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c8aafe20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fe aa c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 8f b1 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 80 b1 5e}
03bch mov rcx,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c873f8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f8 73 c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c8aafe20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fe aa c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 8e b1 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 80 b1 5e}
03f8h mov rax,7ff7c762e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e1 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c873f958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 f9 73 c8 f7 7f 00 00}
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
; lookup_gn256_BinaryBitLogicKind~8u[74] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 f0 fa aa c8 f7 7f 00 00 e8 92 8d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
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
002fh mov rcx,7ff7c8aafaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 fa aa c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 8d b1 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<byte>> lookup<byte>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_TernaryBitLogicKind~8u[250] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 80 55 cb c8 f7 7f 00 00 e8 80 84 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 75 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 e6 74 c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 80 55 cb c8 f7 7f 00 00 e8 41 84 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 75 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 e6 74 c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 80 55 cb c8 f7 7f 00 00 e8 02 84 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 75 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 e6 74 c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 80 55 cb c8 f7 7f 00 00 e8 c3}
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
0031h mov rcx,7ff7c8cb5580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 55 cb c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 84 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 75 b1 5e}
004fh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c874e6c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 e6 74 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8cb5580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 55 cb c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 84 b1 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 75 b1 5e}
008eh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c874e6a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 e6 74 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8cb5580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 55 cb c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 84 b1 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 75 b1 5e}
00cdh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c874e688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 e6 74 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8cb5580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 55 cb c8 f7 7f 00 00}
00f8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a0 59 cb c8 f7 7f 00 00 e8 90 78 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 69 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 f0 74 c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 51 78 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 69 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 f0 74 c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 12 78 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 69 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 f0 74 c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 d3 77 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 69 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 f0 74 c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 94 77 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 68 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 f0 74 c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 55 77 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 86 68 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 f0 74 c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 16 77 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 47 68 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 f0 74 c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 d7 76 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 68 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 f0 74 c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 98 76 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 67 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 ef 74 c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 59 76 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8a 67 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 ef 74 c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 1a 76 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b 67 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 ef 74 c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 db 75 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c 67 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 e7 74 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 9c 75 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd 66 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 e7 74 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 5d 75 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8e 66 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 e7 74 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 1e 75 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4f 66 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 e7 74 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 df 74 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 10 66 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 e7 74 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 a0 74 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 65 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 e7 74 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 61 74 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 65 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 e7 74 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 22 74 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 65 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 e7 74 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 e3 73 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 65 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 e7 74 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 a4 73 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 64 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 e7 74 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 65 73 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 64 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 e7 74 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 26 73 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 64 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 e7 74 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 e7 72 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 64 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 e7 74 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a0 59 cb c8 f7 7f 00 00 e8 a8 72 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 63 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 e7 74 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a0 59 cb c8 f7 7f 00 00 e8 6c 72 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d 63 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 e6 74 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a0 59 cb c8 f7 7f 00 00 e8 30 72 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 63 b1 5e 48 b8 40 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 e8 e6 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 78 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 69 b1 5e}
004fh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c874f078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f0 74 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 78 b1 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 69 b1 5e}
008eh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c874f068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 f0 74 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 78 b1 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 69 b1 5e}
00cdh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c874f058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f0 74 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 77 b1 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 69 b1 5e}
010ch mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c874f048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f0 74 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 77 b1 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 68 b1 5e}
014bh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c874f038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f0 74 c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 77 b1 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 68 b1 5e}
018ah mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c874f028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 f0 74 c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 77 b1 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 68 b1 5e}
01c9h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c874f018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f0 74 c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 76 b1 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 68 b1 5e}
0208h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c874f008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f0 74 c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 76 b1 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 67 b1 5e}
0247h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c874eff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ef 74 c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 76 b1 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 67 b1 5e}
0286h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c874efe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ef 74 c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 76 b1 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 67 b1 5e}
02c5h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c874efd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ef 74 c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 75 b1 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 67 b1 5e}
0304h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c874e7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e7 74 c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 75 b1 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 66 b1 5e}
0343h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c874e7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 e7 74 c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 75 b1 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 66 b1 5e}
0382h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c874e7b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 e7 74 c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 75 b1 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 66 b1 5e}
03c1h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c874e7a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 e7 74 c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 74 b1 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 66 b1 5e}
0400h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c874e798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e7 74 c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 74 b1 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 65 b1 5e}
043fh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c874e788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 e7 74 c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 74 b1 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 65 b1 5e}
047eh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c874e778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 e7 74 c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 74 b1 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 65 b1 5e}
04bdh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c874e768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 e7 74 c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 73 b1 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 65 b1 5e}
04fch mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c874e758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e7 74 c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 73 b1 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 64 b1 5e}
053bh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c874e748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e7 74 c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 73 b1 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 64 b1 5e}
057ah mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c874e738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e7 74 c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 73 b1 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 64 b1 5e}
05b9h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c874e728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 e7 74 c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 72 b1 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 64 b1 5e}
05f8h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c874e718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e7 74 c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 72 b1 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 63 b1 5e}
0637h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c874e708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e7 74 c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 72 b1 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 63 b1 5e}
0673h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c874e6f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 e6 74 c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8cb59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cb c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 72 b1 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 63 b1 5e}
06afh mov rax,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 ea 62 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c874e6e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 e6 74 c8 f7 7f 00 00}
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
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 10 5c cb c8 f7 7f 00 00 e8 a0 70 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 61 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 f2 74 c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 61 70 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 61 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 f2 74 c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 22 70 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 61 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 f2 74 c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 e3 6f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 61 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 f1 74 c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 a4 6f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 60 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 f1 74 c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 65 6f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 60 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 f1 74 c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 26 6f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 60 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 f1 74 c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 e7 6e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 60 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 f1 74 c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 a8 6e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 5f b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 f1 74 c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 69 6e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a 5f b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 f1 74 c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 2a 6e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b 5f b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 f1 74 c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 eb 6d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 5f b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 f1 74 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 ac 6d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd 5e b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 f1 74 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 6d 6d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e 5e b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 f1 74 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 2e 6d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f 5e b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 f1 74 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 ef 6c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 5e b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 f1 74 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 b0 6c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 5d b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 f1 74 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 71 6c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 5d b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 f1 74 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 32 6c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 5d b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 f1 74 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 f3 6b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 5d b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 f0 74 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 b4 6b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 5c b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 f0 74 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 75 6b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 5c b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 f0 74 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 36 6b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 5c b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 f0 74 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 f7 6a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 5c b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 f0 74 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 10 5c cb c8 f7 7f 00 00 e8 b8 6a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 5b b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 f0 74 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 10 5c cb c8 f7 7f 00 00 e8 7c 6a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad 5b b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 f0 74 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 10 5c cb c8 f7 7f 00 00 e8 40 6a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 5b b1 5e 48 b8 40 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 88 f0 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 70 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 61 b1 5e}
004fh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c874f228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 f2 74 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 70 b1 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 61 b1 5e}
008eh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c874f218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f2 74 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 70 b1 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 61 b1 5e}
00cdh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c874f208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f2 74 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 6f b1 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 61 b1 5e}
010ch mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c874f1f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 f1 74 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 6f b1 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 60 b1 5e}
014bh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c874f1e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f1 74 c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 6f b1 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 60 b1 5e}
018ah mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c874f1d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f1 74 c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 6f b1 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 60 b1 5e}
01c9h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c874f1c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f1 74 c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 6e b1 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 60 b1 5e}
0208h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c874f1b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f1 74 c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 6e b1 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 5f b1 5e}
0247h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c874f1a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f1 74 c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 6e b1 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 5f b1 5e}
0286h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c874f198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f1 74 c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 6e b1 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 5f b1 5e}
02c5h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c874f188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 f1 74 c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 6d b1 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 5f b1 5e}
0304h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c874f178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f1 74 c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 6d b1 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 5e b1 5e}
0343h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c874f168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 f1 74 c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 6d b1 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 5e b1 5e}
0382h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c874f158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f1 74 c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 6d b1 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 5e b1 5e}
03c1h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c874f148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f1 74 c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 6c b1 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 5e b1 5e}
0400h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c874f138h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f1 74 c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 6c b1 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 5d b1 5e}
043fh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c874f128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 f1 74 c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 6c b1 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 5d b1 5e}
047eh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c874f118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f1 74 c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 6c b1 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 5d b1 5e}
04bdh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c874f108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f1 74 c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 6b b1 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 5d b1 5e}
04fch mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c874f0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 f0 74 c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 6b b1 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 5c b1 5e}
053bh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c874f0e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f0 74 c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 6b b1 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 5c b1 5e}
057ah mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c874f0d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f0 74 c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 6b b1 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 5c b1 5e}
05b9h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c874f0c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f0 74 c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 6a b1 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 5c b1 5e}
05f8h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c874f0b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f0 74 c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 6a b1 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 5b b1 5e}
0637h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c874f0a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f0 74 c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 6a b1 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 5b b1 5e}
0673h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c874f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 74 c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8cb5c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c cb c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 6a b1 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 5b b1 5e}
06afh mov rax,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 ea 62 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c874f088h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 f0 74 c8 f7 7f 00 00}
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
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 80 5e cb c8 f7 7f 00 00 e8 b0 64 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 55 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 03 75 c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 71 64 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 55 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 f3 74 c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 32 64 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 55 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 f3 74 c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 f3 63 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 55 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 f3 74 c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 b4 63 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 54 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 f3 74 c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 75 63 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 54 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 f3 74 c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 36 63 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 54 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 f3 74 c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 f7 62 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 54 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 f3 74 c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 b8 62 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 53 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 f3 74 c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 79 62 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa 53 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 f3 74 c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 3a 62 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b 53 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 f3 74 c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 fb 61 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 53 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 f3 74 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 bc 61 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed 52 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 f3 74 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 7d 61 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae 52 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 f3 74 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 3e 61 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f 52 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 f2 74 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 ff 60 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 52 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 f2 74 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 c0 60 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 51 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 f2 74 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 81 60 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 51 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 f2 74 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 42 60 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 51 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 f2 74 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 03 60 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 51 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 f2 74 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 c4 5f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 50 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 f2 74 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 85 5f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 50 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 f2 74 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 46 5f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 50 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 f2 74 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 07 5f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 50 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 f2 74 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 80 5e cb c8 f7 7f 00 00 e8 c8 5e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 4f b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 f2 74 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 80 5e cb c8 f7 7f 00 00 e8 8c 5e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bd 4f b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 f2 74 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 80 5e cb c8 f7 7f 00 00 e8 50 5e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 4f b1 5e 48 b8 40 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 38 f2 74 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 64 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 55 b1 5e}
004fh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c87503b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 03 75 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 64 b1 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 55 b1 5e}
008eh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c874f3c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f3 74 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 64 b1 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 55 b1 5e}
00cdh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c874f3b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f3 74 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 63 b1 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 55 b1 5e}
010ch mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c874f3a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f3 74 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 63 b1 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 54 b1 5e}
014bh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c874f398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f3 74 c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 63 b1 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 54 b1 5e}
018ah mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c874f388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 f3 74 c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 63 b1 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 54 b1 5e}
01c9h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c874f378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f3 74 c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 62 b1 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 54 b1 5e}
0208h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c874f368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 f3 74 c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 62 b1 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 53 b1 5e}
0247h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c874f358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f3 74 c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 62 b1 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 53 b1 5e}
0286h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c874f348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f3 74 c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 62 b1 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 53 b1 5e}
02c5h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c874f338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f3 74 c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 61 b1 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 53 b1 5e}
0304h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c874f328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 f3 74 c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 61 b1 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 52 b1 5e}
0343h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c874f318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f3 74 c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 61 b1 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 52 b1 5e}
0382h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c874f308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f3 74 c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 61 b1 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 52 b1 5e}
03c1h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c874f2f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 f2 74 c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 60 b1 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 52 b1 5e}
0400h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c874f2e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f2 74 c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 60 b1 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 51 b1 5e}
043fh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c874f2d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f2 74 c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 60 b1 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 51 b1 5e}
047eh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c874f2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f2 74 c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 60 b1 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 51 b1 5e}
04bdh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c874f2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f2 74 c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 60 b1 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 51 b1 5e}
04fch mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c874f2a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f2 74 c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 5f b1 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 50 b1 5e}
053bh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c874f298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f2 74 c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 5f b1 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 50 b1 5e}
057ah mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c874f288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 f2 74 c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 5f b1 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 50 b1 5e}
05b9h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c874f278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f2 74 c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 5f b1 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 50 b1 5e}
05f8h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c874f268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 f2 74 c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 5e b1 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 4f b1 5e}
0637h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c874f258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f2 74 c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 5e b1 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 4f b1 5e}
0673h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c874f248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f2 74 c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8cb5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e cb c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 5e b1 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 4f b1 5e}
06afh mov rax,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 ea 62 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c874f238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 f2 74 c8 f7 7f 00 00}
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
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f0 60 cb c8 f7 7f 00 00 e8 c0 5c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 4d b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 05 75 c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 81 5c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 4d b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 05 75 c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 42 5c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 4d b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 05 75 c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 03 5c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 4d b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 05 75 c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 c4 5b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 4c b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 05 75 c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 85 5b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 4c b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 05 75 c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 46 5b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 4c b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 05 75 c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 07 5b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 4c b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 04 75 c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 c8 5a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 4b b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 04 75 c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 89 5a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba 4b b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 04 75 c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 4a 5a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b 4b b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 04 75 c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 0b 5a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c 4b b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 04 75 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 cc 59 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd 4a b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 04 75 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 8d 59 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be 4a b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 04 75 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 4e 59 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f 4a b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 04 75 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 0f 59 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 4a b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 04 75 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 d0 58 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 4a b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 04 75 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 91 58 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 49 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 04 75 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 52 58 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 49 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 04 75 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 13 58 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 49 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 04 75 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 d4 57 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 49 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 04 75 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 95 57 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 48 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 04 75 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 56 57 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 48 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 04 75 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 17 57 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 48 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 03 75 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f0 60 cb c8 f7 7f 00 00 e8 d8 56 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 48 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 03 75 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f0 60 cb c8 f7 7f 00 00 e8 9c 56 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd 47 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 03 75 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f0 60 cb c8 f7 7f 00 00 e8 60 56 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 47 b1 5e 48 b8 40 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 c8 03 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 5c b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 4d b1 5e}
004fh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c8750568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 05 75 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 5c b1 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 4d b1 5e}
008eh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c8750558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 05 75 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 5c b1 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 4d b1 5e}
00cdh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c8750548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 05 75 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 5c b1 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 4d b1 5e}
010ch mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c8750538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 05 75 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 5b b1 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 4c b1 5e}
014bh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c8750528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 05 75 c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 5b b1 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 4c b1 5e}
018ah mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c8750518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 05 75 c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 5b b1 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 4c b1 5e}
01c9h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c8750508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 05 75 c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 5b b1 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 4c b1 5e}
0208h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c87504f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 04 75 c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 5a b1 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 4b b1 5e}
0247h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c87504e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 04 75 c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 5a b1 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 4b b1 5e}
0286h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c87504d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 04 75 c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 5a b1 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 4b b1 5e}
02c5h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c87504c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 04 75 c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 5a b1 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 4b b1 5e}
0304h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c87504b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 04 75 c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 59 b1 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 4a b1 5e}
0343h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c87504a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 04 75 c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 59 b1 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 4a b1 5e}
0382h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c8750498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 04 75 c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 59 b1 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 4a b1 5e}
03c1h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c8750488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 04 75 c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 59 b1 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 4a b1 5e}
0400h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c8750478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 04 75 c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 58 b1 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 4a b1 5e}
043fh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c8750468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 04 75 c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 58 b1 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 49 b1 5e}
047eh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c8750458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 04 75 c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 58 b1 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 49 b1 5e}
04bdh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c8750448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 04 75 c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 58 b1 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 49 b1 5e}
04fch mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c8750438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 04 75 c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 57 b1 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 49 b1 5e}
053bh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c8750428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 04 75 c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 57 b1 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 48 b1 5e}
057ah mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c8750418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 04 75 c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 57 b1 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 48 b1 5e}
05b9h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c8750408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 04 75 c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 57 b1 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 48 b1 5e}
05f8h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c87503f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 03 75 c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 56 b1 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 48 b1 5e}
0637h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c87503e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 03 75 c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 56 b1 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 47 b1 5e}
0673h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c87503d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 03 75 c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8cb60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cb c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 56 b1 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 47 b1 5e}
06afh mov rax,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 ea 62 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c87503c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 03 75 c8 f7 7f 00 00}
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
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 60 63 cb c8 f7 7f 00 00 e8 d0 54 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 46 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 07 75 c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 91 54 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 45 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 07 75 c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 52 54 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 45 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 06 75 c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 13 54 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 45 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 06 75 c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 d4 53 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 45 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 06 75 c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 95 53 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 44 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 06 75 c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 56 53 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 44 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 06 75 c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 17 53 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 44 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 06 75 c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 d8 52 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 44 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 06 75 c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 99 52 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca 43 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 06 75 c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 5a 52 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b 43 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 06 75 c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 1b 52 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c 43 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 06 75 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 dc 51 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d 43 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 06 75 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 9d 51 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce 42 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 06 75 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 5e 51 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f 42 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 06 75 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 1f 51 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 42 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 06 75 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 e0 50 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 42 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 06 75 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 a1 50 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 41 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 06 75 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 62 50 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 41 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 05 75 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 23 50 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 41 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 05 75 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 e4 4f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 41 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 05 75 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 a5 4f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 40 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 05 75 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 66 4f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 40 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 05 75 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 27 4f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 40 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 05 75 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 60 63 cb c8 f7 7f 00 00 e8 e8 4e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 40 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 05 75 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 60 63 cb c8 f7 7f 00 00 e8 ac 4e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd 3f b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 05 75 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 60 63 cb c8 f7 7f 00 00 e8 70 4e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 3f b1 5e 48 b8 40 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 78 05 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 54 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 46 b1 5e}
004fh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c8750718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 07 75 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 54 b1 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 45 b1 5e}
008eh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c8750708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 07 75 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 54 b1 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 45 b1 5e}
00cdh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c87506f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 06 75 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 54 b1 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 45 b1 5e}
010ch mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c87506e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 06 75 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 53 b1 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 45 b1 5e}
014bh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c87506d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 06 75 c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 53 b1 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 44 b1 5e}
018ah mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c87506c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 06 75 c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 53 b1 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 44 b1 5e}
01c9h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c87506b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 06 75 c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 53 b1 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 44 b1 5e}
0208h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c87506a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 06 75 c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 52 b1 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 44 b1 5e}
0247h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c8750698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 06 75 c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 52 b1 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 43 b1 5e}
0286h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c8750688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 06 75 c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 52 b1 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 43 b1 5e}
02c5h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c8750678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 06 75 c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 52 b1 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 43 b1 5e}
0304h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c8750668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 06 75 c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 51 b1 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 43 b1 5e}
0343h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c8750658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 06 75 c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 51 b1 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 42 b1 5e}
0382h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c8750648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 06 75 c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 51 b1 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 42 b1 5e}
03c1h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c8750638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 06 75 c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 51 b1 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 42 b1 5e}
0400h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c8750628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 06 75 c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 50 b1 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 42 b1 5e}
043fh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c8750618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 06 75 c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 50 b1 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 41 b1 5e}
047eh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c8750608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 06 75 c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 50 b1 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 41 b1 5e}
04bdh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c87505f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 05 75 c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 50 b1 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 41 b1 5e}
04fch mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c87505e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 05 75 c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 4f b1 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 41 b1 5e}
053bh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c87505d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 05 75 c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 4f b1 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 40 b1 5e}
057ah mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c87505c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 05 75 c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 4f b1 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 40 b1 5e}
05b9h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c87505b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 05 75 c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 4f b1 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 40 b1 5e}
05f8h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c87505a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 05 75 c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 4e b1 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 40 b1 5e}
0637h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c8750598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 05 75 c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 4e b1 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 3f b1 5e}
0673h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c8750588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 05 75 c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8cb6360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 cb c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 4e b1 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 3f b1 5e}
06afh mov rax,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 ea 62 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c8750578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 05 75 c8 f7 7f 00 00}
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
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d0 65 cb c8 f7 7f 00 00 e8 e0 48 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 3a b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 20 75 c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 a1 48 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 39 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 20 75 c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 62 48 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 39 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 20 75 c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 23 48 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 39 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 20 75 c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 e4 47 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 39 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 20 75 c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 a5 47 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 38 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 20 75 c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 66 47 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 38 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 20 75 c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 27 47 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 38 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 20 75 c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 e8 46 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 38 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 20 75 c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 a9 46 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 da 37 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 20 75 c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 6a 46 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b 37 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 1f 75 c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 2b 46 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c 37 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 1f 75 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 ec 45 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d 37 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 1f 75 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 ad 45 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 de 36 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 1f 75 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 6e 45 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f 36 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 1f 75 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 2f 45 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 36 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 1f 75 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 f0 44 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 36 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 1f 75 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 b1 44 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 35 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 1f 75 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 72 44 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 35 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 07 75 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 33 44 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 35 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 07 75 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 f4 43 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 35 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 07 75 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 b5 43 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 34 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 07 75 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 76 43 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 34 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 07 75 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 37 43 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 34 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 07 75 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d0 65 cb c8 f7 7f 00 00 e8 f8 42 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 34 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 07 75 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d0 65 cb c8 f7 7f 00 00 e8 bc 42 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed 33 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 07 75 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d0 65 cb c8 f7 7f 00 00 e8 80 42 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 33 b1 5e 48 b8 40 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 28 07 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 48 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 3a b1 5e}
004fh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c8752098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 20 75 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 48 b1 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 39 b1 5e}
008eh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c8752088h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 20 75 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 48 b1 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 39 b1 5e}
00cdh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c8752078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 20 75 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 48 b1 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 39 b1 5e}
010ch mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c8752068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 20 75 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 47 b1 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 39 b1 5e}
014bh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c8752058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 20 75 c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 47 b1 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 38 b1 5e}
018ah mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c8752048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 20 75 c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 47 b1 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 38 b1 5e}
01c9h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c8752038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 20 75 c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 47 b1 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 38 b1 5e}
0208h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c8752028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 20 75 c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 46 b1 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 38 b1 5e}
0247h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c8752018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 20 75 c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 46 b1 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 37 b1 5e}
0286h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c8752008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 20 75 c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 46 b1 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 37 b1 5e}
02c5h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c8751ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1f 75 c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 46 b1 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 37 b1 5e}
0304h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c8751fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 1f 75 c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 45 b1 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 37 b1 5e}
0343h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c8751fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 1f 75 c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 45 b1 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 36 b1 5e}
0382h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c8751fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1f 75 c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 45 b1 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 36 b1 5e}
03c1h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c8751fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 1f 75 c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 45 b1 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 36 b1 5e}
0400h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c8751fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1f 75 c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 44 b1 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 36 b1 5e}
043fh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c8751f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1f 75 c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 44 b1 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 35 b1 5e}
047eh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c8751f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 1f 75 c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 44 b1 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 35 b1 5e}
04bdh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c87507a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 07 75 c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 44 b1 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 35 b1 5e}
04fch mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c8750798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 07 75 c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 43 b1 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 35 b1 5e}
053bh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c8750788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 07 75 c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 43 b1 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 34 b1 5e}
057ah mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c8750778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 07 75 c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 43 b1 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 34 b1 5e}
05b9h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c8750768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 07 75 c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 43 b1 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 34 b1 5e}
05f8h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c8750758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 07 75 c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 42 b1 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 34 b1 5e}
0637h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c8750748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 07 75 c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 42 b1 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 33 b1 5e}
0673h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c8750738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 07 75 c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8cb65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 cb c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 42 b1 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 33 b1 5e}
06afh mov rax,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 ea 62 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c8750728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 07 75 c8 f7 7f 00 00}
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
; lookup_gn256_TernaryBitLogicKind~8u[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 40 68 cb c8 f7 7f 00 00 e8 f0 40 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 32 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 22 75 c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 b1 40 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 31 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 22 75 c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 72 40 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 31 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 22 75 c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 33 40 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 31 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 22 75 c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 f4 3f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 31 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 22 75 c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 b5 3f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 30 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 21 75 c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 76 3f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 30 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 21 75 c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 37 3f b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 30 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 21 75 c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 f8 3e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 30 b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 21 75 c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 b9 3e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea 2f b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 21 75 c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 7a 3e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab 2f b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 21 75 c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 3b 3e b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c 2f b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 21 75 c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 fc 3d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d 2f b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 21 75 c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 bd 3d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee 2e b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 21 75 c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 7e 3d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 af 2e b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 21 75 c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 3f 3d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 70 2e b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 21 75 c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 00 3d b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 2e b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 21 75 c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 c1 3c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 2d b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 21 75 c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 82 3c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 2d b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 21 75 c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 43 3c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 2d b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 21 75 c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 04 3c b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 2d b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 21 75 c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 c5 3b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 2c b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 20 75 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 86 3b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 2c b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 20 75 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 47 3b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 2c b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 20 75 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 40 68 cb c8 f7 7f 00 00 e8 08 3b b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 2c b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 20 75 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 40 68 cb c8 f7 7f 00 00 e8 cc 3a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd 2b b1 5e 48 b9 40 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 20 75 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 40 68 cb c8 f7 7f 00 00 e8 90 3a b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 2b b1 5e 48 b8 40 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 a8 20 75 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 40 b1 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 32 b1 5e}
004fh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c8752248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 22 75 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 40 b1 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 31 b1 5e}
008eh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c8752238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 22 75 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 40 b1 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 31 b1 5e}
00cdh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c8752228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 22 75 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 40 b1 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 31 b1 5e}
010ch mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c8752218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 22 75 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 3f b1 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 31 b1 5e}
014bh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c8752208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 22 75 c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 3f b1 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 30 b1 5e}
018ah mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c87521f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 21 75 c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 3f b1 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 30 b1 5e}
01c9h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c87521e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 21 75 c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 3f b1 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 30 b1 5e}
0208h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c87521d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 21 75 c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 3e b1 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 30 b1 5e}
0247h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c87521c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 21 75 c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 3e b1 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 2f b1 5e}
0286h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c87521b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 21 75 c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 3e b1 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 2f b1 5e}
02c5h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c87521a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 21 75 c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 3e b1 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 2f b1 5e}
0304h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c8752198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 21 75 c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 3d b1 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 2f b1 5e}
0343h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c8752188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 21 75 c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 3d b1 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 2e b1 5e}
0382h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c8752178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 21 75 c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 3d b1 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 2e b1 5e}
03c1h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c8752168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 21 75 c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 3d b1 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 2e b1 5e}
0400h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c8752158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 21 75 c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 3d b1 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 2e b1 5e}
043fh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c8752148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 21 75 c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 3c b1 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 2d b1 5e}
047eh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c8752138h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 21 75 c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 3c b1 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 2d b1 5e}
04bdh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c8752128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 21 75 c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 3c b1 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 2d b1 5e}
04fch mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c8752118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 21 75 c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 3c b1 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 2d b1 5e}
053bh mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c8752108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 21 75 c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 3b b1 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 2c b1 5e}
057ah mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c87520f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 20 75 c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 3b b1 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 2c b1 5e}
05b9h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c87520e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 20 75 c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 3b b1 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 2c b1 5e}
05f8h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c87520d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 20 75 c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 3b b1 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 2c b1 5e}
0637h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c87520c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 20 75 c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 3a b1 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 2b b1 5e}
0673h mov rcx,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 62 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c87520b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 20 75 c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8cb6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 cb c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 3a b1 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 2b b1 5e}
06afh mov rax,7ff7c762ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 ea 62 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c87520a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 20 75 c8 f7 7f 00 00}
06c7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06ceh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
06d2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
06d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d6h ret                                     ; RET || C3 || encoded[1]{c3}
