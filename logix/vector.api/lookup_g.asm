------------------------------------------------------------------------------------------------------------------------
; UnaryOp<Vector128<byte>> lookup<byte>(N128 w, UnaryBitLogicKind:byte kind)
; lookup_g[8u](n128,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 d8 80 9e c8 f7 7f 00 00 e8 e7 9a ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 8c ba 5e 48 b8 90 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 e0 06 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89e80d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 80 9e c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 9a ba 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 8c ba 5e}
0038h mov rax,7ff7c762e290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86b06e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 06 6b c8 f7 7f 00 00}
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
; lookup_g[8i](n128,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 68 af 9e c8 f7 7f 00 00 e8 97 99 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 8a ba 5e 48 b8 90 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 80 07 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89eaf68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 af 9e c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 99 ba 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 8a ba 5e}
0038h mov rax,7ff7c762e290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86b0780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 07 6b c8 f7 7f 00 00}
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
; lookup_g[16u](n128,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 88 82 9e c8 f7 7f 00 00 e8 47 98 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 89 ba 5e 48 b8 90 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 d0 07 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89e8288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 82 9e c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 98 ba 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 89 ba 5e}
0038h mov rax,7ff7c762e290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86b07d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 07 6b c8 f7 7f 00 00}
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
; lookup_g[16i](n128,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 88 8d 9e c8 f7 7f 00 00 e8 f7 96 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 88 ba 5e 48 b8 90 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 20 08 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89e8d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 8d 9e c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 96 ba 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 88 ba 5e}
0038h mov rax,7ff7c762e290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86b0820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 08 6b c8 f7 7f 00 00}
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
; lookup_g[32u](n128,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 38 84 9e c8 f7 7f 00 00 e8 a7 95 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 86 ba 5e 48 b8 90 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 70 08 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89e8438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 84 9e c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 95 ba 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 86 ba 5e}
0038h mov rax,7ff7c762e290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86b0870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 08 6b c8 f7 7f 00 00}
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
; lookup_g[32i](n128,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 38 8f 9e c8 f7 7f 00 00 e8 57 94 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 88 85 ba 5e 48 b8 90 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 c0 08 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89e8f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 8f 9e c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 94 ba 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 85 ba 5e}
0038h mov rax,7ff7c762e290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86b08c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 08 6b c8 f7 7f 00 00}
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
; lookup_g[64u](n128,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 08 64 9e c8 f7 7f 00 00 e8 07 93 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 84 ba 5e 48 b8 90 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 c8 29 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89e6408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 64 9e c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 93 ba 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 84 ba 5e}
0038h mov rax,7ff7c762e290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86b29c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 29 6b c8 f7 7f 00 00}
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
; lookup_g[64i](n128,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 18 b1 9e c8 f7 7f 00 00 e8 b7 91 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 82 ba 5e 48 b8 90 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 18 2a 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89eb118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b1 9e c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 91 ba 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 82 ba 5e}
0038h mov rax,7ff7c762e290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86b2a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 2a 6b c8 f7 7f 00 00}
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
; lookup_g[8u](n256,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 98 87 9e c8 f7 7f 00 00 e8 67 90 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 81 ba 5e 48 b8 90 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 08 2b 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89e8798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 87 9e c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 90 ba 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 81 ba 5e}
0038h mov rax,7ff7c762e290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86b2b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 2b 6b c8 f7 7f 00 00}
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
; lookup_g[8i](n256,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 c8 b2 9e c8 f7 7f 00 00 e8 17 8f ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 80 ba 5e 48 b8 90 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 a8 2b 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89eb2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 b2 9e c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 8f ba 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 80 ba 5e}
0038h mov rax,7ff7c762e290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86b2ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 2b 6b c8 f7 7f 00 00}
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
; lookup_g[16u](n256,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 28 8a 9e c8 f7 7f 00 00 e8 c7 8d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 7e ba 5e 48 b8 90 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 f8 2b 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89e8a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 8a 9e c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 8d ba 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 7e ba 5e}
0038h mov rax,7ff7c762e290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86b2bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 2b 6b c8 f7 7f 00 00}
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
; lookup_g[16i](n256,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 e8 90 9e c8 f7 7f 00 00 e8 77 8c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 7d ba 5e 48 b8 90 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 48 2c 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89e90e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 90 9e c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 8c ba 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 7d ba 5e}
0038h mov rax,7ff7c762e290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86b2c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 2c 6b c8 f7 7f 00 00}
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
; lookup_g[32u](n256,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 d8 8b 9e c8 f7 7f 00 00 e8 27 8b ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 7c ba 5e 48 b8 90 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 98 2c 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89e8bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 8b 9e c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 8b ba 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 7c ba 5e}
0038h mov rax,7ff7c762e290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86b2c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 2c 6b c8 f7 7f 00 00}
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
; lookup_g[32i](n256,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 98 92 9e c8 f7 7f 00 00 e8 d7 89 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 7b ba 5e 48 b8 90 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 e8 2c 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89e9298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 92 9e c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 89 ba 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 7b ba 5e}
0038h mov rax,7ff7c762e290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86b2ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 2c 6b c8 f7 7f 00 00}
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
; lookup_g[64u](n256,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 e8 85 9e c8 f7 7f 00 00 e8 87 88 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 79 ba 5e 48 b8 90 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 38 2d 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89e85e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 85 9e c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 88 ba 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 79 ba 5e}
0038h mov rax,7ff7c762e290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86b2d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 2d 6b c8 f7 7f 00 00}
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
; lookup_g[64i](n256,UnaryBitLogicKind~8u)[96] = {57 56 55 53 48 83 ec 28 8b f2 40 80 fe 01 74 50 40 80 fe 02 0f 85 8c 00 00 00 48 b9 98 cf 9e c8 f7 7f 00 00 e8 37 87 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 78 ba 5e 48 b8 90 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 18 3b 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
001ah mov rcx,7ff7c89ecf98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 cf 9e c8 f7 7f 00 00}
0024h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 87 ba 5e}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0030h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0033h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 78 ba 5e}
0038h mov rax,7ff7c762e290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e2 62 c7 f7 7f 00 00}
0042h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0046h mov rax,7ff7c86b3b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 3b 6b c8 f7 7f 00 00}
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
; lookup_g[8u](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 28 22 9e c8 f7 7f 00 00 e8 d0 85 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 77 ba 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 28 3c 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89e2228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 22 9e c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 85 ba 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 77 ba 5e}
004fh mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86b3c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 3c 6b c8 f7 7f 00 00}
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
; lookup_g[8i](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f8 1e 9e c8 f7 7f 00 00 e8 10 84 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 75 ba 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 a8 3c 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89e1ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1e 9e c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 84 ba 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 75 ba 5e}
004fh mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86b3ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 3c 6b c8 f7 7f 00 00}
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
; lookup_g[16u](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 98 1b 9e c8 f7 7f 00 00 e8 50 82 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 73 ba 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 e8 3c 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89e1b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1b 9e c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 82 ba 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 73 ba 5e}
004fh mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86b3ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 3c 6b c8 f7 7f 00 00}
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
; lookup_g[16i](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e8 19 9e c8 f7 7f 00 00 e8 90 80 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 71 ba 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 28 3d 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89e19e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 19 9e c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 80 ba 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 71 ba 5e}
004fh mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86b3d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 3d 6b c8 f7 7f 00 00}
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
; lookup_g[32u](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 38 2d 9e c8 f7 7f 00 00 e8 d0 7e ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 70 ba 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 68 3d 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89e2d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2d 9e c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 7e ba 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 70 ba 5e}
004fh mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86b3d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 3d 6b c8 f7 7f 00 00}
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
; lookup_g[32i](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 08 2a 9e c8 f7 7f 00 00 e8 10 7d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 6e ba 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 a8 3d 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89e2a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 2a 9e c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 7d ba 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 6e ba 5e}
004fh mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86b3da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 3d 6b c8 f7 7f 00 00}
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
; lookup_g[64u](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 58 25 9e c8 f7 7f 00 00 e8 50 7b ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 6c ba 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 e8 3d 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89e2558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 25 9e c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 7b ba 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 6c ba 5e}
004fh mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86b3de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 3d 6b c8 f7 7f 00 00}
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
; lookup_g[64i](n128,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 68 30 9e c8 f7 7f 00 00 e8 90 79 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 6a ba 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 a8 3e 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89e3068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 30 9e c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 79 ba 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 6a ba 5e}
004fh mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86b3ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 3e 6b c8 f7 7f 00 00}
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
; lookup_g[8u](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 68 50 9e c8 f7 7f 00 00 e8 d0 73 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 65 ba 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 d8 4d 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89e5068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 50 9e c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 73 ba 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 65 ba 5e}
004fh mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86b4dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 4d 6b c8 f7 7f 00 00}
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
; lookup_g[8i](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 38 4d 9e c8 f7 7f 00 00 e8 10 72 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 63 ba 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 58 4e 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89e4d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4d 9e c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 72 ba 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 63 ba 5e}
004fh mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86b4e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 4e 6b c8 f7 7f 00 00}
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
; lookup_g[16u](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 40 a7 9c c8 f7 7f 00 00 e8 50 70 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 61 ba 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 98 4e 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89ca740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a7 9c c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 70 ba 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 61 ba 5e}
004fh mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86b4e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 4e 6b c8 f7 7f 00 00}
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
; lookup_g[16i](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 48 1d 9e c8 f7 7f 00 00 e8 90 6e ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 5f ba 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 d8 4e 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89e1d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1d 9e c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 6e ba 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 5f ba 5e}
004fh mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86b4ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 4e 6b c8 f7 7f 00 00}
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
; lookup_g[32u](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c8 59 9e c8 f7 7f 00 00 e8 d0 6c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 5e ba 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 18 4f 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89e59c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 9e c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 6c ba 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 5e ba 5e}
004fh mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86b4f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 4f 6b c8 f7 7f 00 00}
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
; lookup_g[32i](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 98 56 9e c8 f7 7f 00 00 e8 10 6b ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 5c ba 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 58 4f 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89e5698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 56 9e c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 6b ba 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 5c ba 5e}
004fh mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86b4f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 4f 6b c8 f7 7f 00 00}
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
; lookup_g[64u](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 28 60 9e c8 f7 7f 00 00 e8 50 69 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 5a ba 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 98 4f 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89e6028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 60 9e c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 69 ba 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 5a ba 5e}
004fh mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86b4f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 4f 6b c8 f7 7f 00 00}
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
; lookup_g[64i](n256,ComparisonKind~8u)[119] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ea 00 00 00 8b c9 48 8d 05 66 01 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f8 5c 9e c8 f7 7f 00 00 e8 90 67 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 58 ba 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 38 5c 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c89e5cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5c 9e c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 67 ba 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 58 ba 5e}
004fh mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005dh mov rax,7ff7c86b5c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 5c 6b c8 f7 7f 00 00}
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
; lookup_g[8u](n128,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 18 19 c6 c8 f7 7f 00 00 e8 ca 65 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb 56 ba 5e 48 b8 90 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 28 f6 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c61918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 19 c6 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 65 ba 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 56 ba 5e}
0055h mov rax,7ff7c762ea90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86bf628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 f6 6b c8 f7 7f 00 00}
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
; lookup_g[8i](n128,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 88 1e c6 c8 f7 7f 00 00 e8 ba 63 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb 54 ba 5e 48 b8 90 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 f0 f6 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c61e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 1e c6 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 63 ba 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 54 ba 5e}
0055h mov rax,7ff7c762ea90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86bf6f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 f6 6b c8 f7 7f 00 00}
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
; lookup_g[16u](n128,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 18 22 c6 c8 f7 7f 00 00 e8 aa 61 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db 52 ba 5e 48 b8 90 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 68 f7 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c62218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 22 c6 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 61 ba 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 52 ba 5e}
0055h mov rax,7ff7c762ea90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86bf768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 f7 6b c8 f7 7f 00 00}
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
; lookup_g[16i](n128,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 a8 25 c6 c8 f7 7f 00 00 e8 9a 5f ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cb 50 ba 5e 48 b8 90 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 e0 f7 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c625a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 25 c6 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 5f ba 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 50 ba 5e}
0055h mov rax,7ff7c762ea90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86bf7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 f7 6b c8 f7 7f 00 00}
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
; lookup_g[32u](n128,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 38 29 c6 c8 f7 7f 00 00 e8 8a 5d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb 4e ba 5e 48 b8 90 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 58 f8 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c62938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 29 c6 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 5d ba 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 4e ba 5e}
0055h mov rax,7ff7c762ea90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86bf858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 f8 6b c8 f7 7f 00 00}
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
; lookup_g[32i](n128,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 c8 2c c6 c8 f7 7f 00 00 e8 7a 57 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab 48 ba 5e 48 b8 90 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 20 11 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c62cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 2c c6 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 57 ba 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 48 ba 5e}
0055h mov rax,7ff7c762ea90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86c1120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 11 6c c8 f7 7f 00 00}
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
; lookup_g[64u](n128,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 58 30 c6 c8 f7 7f 00 00 e8 6a 55 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b 46 ba 5e 48 b8 90 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 98 11 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c63058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 30 c6 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 55 ba 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 46 ba 5e}
0055h mov rax,7ff7c762ea90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86c1198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 11 6c c8 f7 7f 00 00}
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
; lookup_g[64i](n128,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 e8 33 c6 c8 f7 7f 00 00 e8 5a 53 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b 44 ba 5e 48 b8 90 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 10 12 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c633e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 33 c6 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 53 ba 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 44 ba 5e}
0055h mov rax,7ff7c762ea90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86c1210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 12 6c c8 f7 7f 00 00}
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
; lookup_g[8u](n256,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 90 3b c6 c8 f7 7f 00 00 e8 4a 51 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b 42 ba 5e 48 b8 90 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 30 13 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c63b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 3b c6 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 51 ba 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 42 ba 5e}
0055h mov rax,7ff7c762ea90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86c1330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 13 6c c8 f7 7f 00 00}
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
; lookup_g[8i](n256,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 00 41 c6 c8 f7 7f 00 00 e8 3a 4f ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b 40 ba 5e 48 b8 90 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 f8 13 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c64100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 41 c6 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 4f ba 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 40 ba 5e}
0055h mov rax,7ff7c762ea90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86c13f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 13 6c c8 f7 7f 00 00}
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
; lookup_g[16u](n256,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 90 44 c6 c8 f7 7f 00 00 e8 2a 4d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b 3e ba 5e 48 b8 90 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 70 14 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c64490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 44 c6 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 4d ba 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 3e ba 5e}
0055h mov rax,7ff7c762ea90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86c1470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 14 6c c8 f7 7f 00 00}
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
; lookup_g[16i](n256,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 20 48 c6 c8 f7 7f 00 00 e8 1a 47 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b 38 ba 5e 48 b8 90 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 48 21 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c64820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 48 c6 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 47 ba 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 38 ba 5e}
0055h mov rax,7ff7c762ea90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86c2148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 21 6c c8 f7 7f 00 00}
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
; lookup_g[32u](n256,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 b0 4b c6 c8 f7 7f 00 00 e8 0a 45 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3b 36 ba 5e 48 b8 90 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 c0 21 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c64bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 4b c6 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 45 ba 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 36 ba 5e}
0055h mov rax,7ff7c762ea90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86c21c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 21 6c c8 f7 7f 00 00}
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
; lookup_g[32i](n256,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 40 4f c6 c8 f7 7f 00 00 e8 fa 42 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2b 34 ba 5e 48 b8 90 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 38 22 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c64f40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 4f c6 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 42 ba 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 34 ba 5e}
0055h mov rax,7ff7c762ea90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86c2238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 22 6c c8 f7 7f 00 00}
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
; lookup_g[64u](n256,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 d0 52 c6 c8 f7 7f 00 00 e8 ea 40 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b 32 ba 5e 48 b8 90 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 b0 22 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c652d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 52 c6 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 40 ba 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 32 ba 5e}
0055h mov rax,7ff7c762ea90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86c22b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 22 6c c8 f7 7f 00 00}
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
; lookup_g[64i](n256,ShiftOpKind~8u)[125] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 ba 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 60 56 c6 c8 f7 7f 00 00 e8 da 3e ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 30 ba 5e 48 b8 90 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 28 23 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0037h mov rcx,7ff7c8c65660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 56 c6 c8 f7 7f 00 00}
0041h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 3e ba 5e}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 30 ba 5e}
0055h mov rax,7ff7c762ea90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 ea 62 c7 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c86c2328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 23 6c c8 f7 7f 00 00}
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
; lookup_g[8u](n128,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 28 22 9e c8 f7 7f 00 00 e8 d2 3c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 2e ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 5c 6b c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 28 22 9e c8 f7 7f 00 00 e8 93 3c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 2d ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 5e 6b c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 28 22 9e c8 f7 7f 00 00 e8 54 3c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 2d ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 5e 6b c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 28 22 9e c8 f7 7f 00 00 e8 15 3c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 2d ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 5d 6b c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 28 22 9e c8 f7 7f 00 00 e8 d6 3b ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 2d ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 5d 6b c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 28 22 9e c8 f7 7f 00 00 e8 97 3b ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 2c ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 5d 6b c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 28 22 9e c8 f7 7f 00 00 e8 58 3b ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 2c ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 5e 6b c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 28 22 9e c8 f7 7f 00 00 e8 19 3b ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 2c ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 5d 6b c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 28 22 9e c8 f7 7f 00 00 e8 da 3a ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 2c ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 5e 6b c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 28 22 9e c8 f7 7f 00 00 e8 9b 3a ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 2b ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 5e 6b c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 28 22 9e c8 f7 7f 00 00 e8 5c 3a ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 2b ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 5d 6b c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 28 22 9e c8 f7 7f 00 00 e8 1d 3a ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 2b ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 5d 6b c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 28 22 9e c8 f7 7f 00 00 e8 de 39 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 2b ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 5d 6b c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 28 22 9e c8 f7 7f 00 00 e8 9f 39 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 2a ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 5e 6b c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 28 22 9e c8 f7 7f 00 00 e8 63 39 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 2a ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 5d 6b c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 28 22 9e c8 f7 7f 00 00 e8 27 39 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 2a ba 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 88 5e 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89e2228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 22 9e c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 3c ba 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 2e ba 5e}
004dh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86b5ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 5c 6b c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89e2228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 22 9e c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 3c ba 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 2d ba 5e}
008ch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86b5ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 5e 6b c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89e2228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 22 9e c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 3c ba 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 2d ba 5e}
00cbh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86b5ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 5e 6b c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89e2228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 22 9e c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 3c ba 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 2d ba 5e}
010ah mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86b5d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 5d 6b c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89e2228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 22 9e c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 3b ba 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 2d ba 5e}
0149h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86b5de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 5d 6b c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89e2228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 22 9e c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 3b ba 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 2c ba 5e}
0188h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86b5dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 5d 6b c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89e2228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 22 9e c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 3b ba 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 2c ba 5e}
01c7h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86b5e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 5e 6b c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89e2228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 22 9e c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 3b ba 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 2c ba 5e}
0206h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86b5da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 5d 6b c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89e2228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 22 9e c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 3a ba 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 2c ba 5e}
0245h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86b5e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5e 6b c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89e2228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 22 9e c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 3a ba 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 2b ba 5e}
0284h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86b5e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 5e 6b c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89e2228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 22 9e c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 3a ba 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 2b ba 5e}
02c3h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86b5d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5d 6b c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89e2228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 22 9e c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 3a ba 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 2b ba 5e}
0302h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86b5d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 5d 6b c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89e2228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 22 9e c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 39 ba 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 2b ba 5e}
0341h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86b5d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5d 6b c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89e2228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 22 9e c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 39 ba 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 2a ba 5e}
0380h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86b5e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5e 6b c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89e2228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 22 9e c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 39 ba 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 2a ba 5e}
03bch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86b5d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 5d 6b c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89e2228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 22 9e c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 39 ba 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 2a ba 5e}
03f8h mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86b5e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 5e 6b c8 f7 7f 00 00}
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
; lookup_g[8i](n128,BinaryBitLogicKind~8u)[1132] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 f8 1e 9e c8 f7 7f 00 00 e8 c2 37 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 28 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 5f 6b c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 f8 1e 9e c8 f7 7f 00 00 e8 83 37 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 28 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 66 6b c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 f8 1e 9e c8 f7 7f 00 00 e8 44 37 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 28 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 66 6b c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 f8 1e 9e c8 f7 7f 00 00 e8 05 37 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 28 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 5f 6b c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 f8 1e 9e c8 f7 7f 00 00 e8 c6 36 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 27 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 66 6b c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 f8 1e 9e c8 f7 7f 00 00 e8 87 36 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 27 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 66 6b c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 f8 1e 9e c8 f7 7f 00 00 e8 48 36 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 27 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 66 6b c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 f8 1e 9e c8 f7 7f 00 00 e8 09 36 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3a 27 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 66 6b c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 f8 1e 9e c8 f7 7f 00 00 e8 ca 35 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb 26 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 66 6b c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 f8 1e 9e c8 f7 7f 00 00 e8 8b 35 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc 26 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 66 6b c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 f8 1e 9e c8 f7 7f 00 00 e8 4c 35 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7d 26 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 65 6b c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f8 1e 9e c8 f7 7f 00 00 e8 0d 35 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3e 26 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 66 6b c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f8 1e 9e c8 f7 7f 00 00 e8 ce 34 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ff 25 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 65 6b c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f8 1e 9e c8 f7 7f 00 00 e8 8f 34 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c0 25 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 66 6b c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f8 1e 9e c8 f7 7f 00 00 e8 53 34 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 84 25 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 65 6b c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f8 1e 9e c8 f7 7f 00 00 e8 17 34 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 25 ba 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 80 66 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d8 d2 08 c8 f7 7f 00 00 e8 d1 33 ba 5e 48 8b f8 40 88 77 08 48 b9 68 6f 72 c7 f7 7f 00 00 e8 fb b6 b4 5e 48 8b f0 48 b9 68 9f 98 c7 f7 7f 00 00 e8 a9 33 ba 5e 48 8b d8 b9 4c 04 00 00 48 ba d8 a5 b7 c7 f7 7f 00 00 e8 92 cc}
; TermCode = CTC_INTRx2
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
002fh mov rcx,7ff7c89e1ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1e 9e c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 37 ba 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 28 ba 5e}
004dh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86b5fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 5f 6b c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89e1ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1e 9e c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 37 ba 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 28 ba 5e}
008ch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86b66a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 66 6b c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89e1ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1e 9e c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 37 ba 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 28 ba 5e}
00cbh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86b6690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 66 6b c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89e1ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1e 9e c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 37 ba 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 28 ba 5e}
010ah mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86b5fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 5f 6b c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89e1ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1e 9e c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 36 ba 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 27 ba 5e}
0149h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86b6630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 66 6b c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89e1ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1e 9e c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 36 ba 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 27 ba 5e}
0188h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86b6620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 66 6b c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89e1ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1e 9e c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 36 ba 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 27 ba 5e}
01c7h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86b6640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 66 6b c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89e1ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1e 9e c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 36 ba 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 27 ba 5e}
0206h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86b6610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 66 6b c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89e1ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1e 9e c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 35 ba 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 26 ba 5e}
0245h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86b6670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 66 6b c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89e1ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1e 9e c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 35 ba 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 26 ba 5e}
0284h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86b6650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 66 6b c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89e1ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1e 9e c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 35 ba 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 26 ba 5e}
02c3h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86b65e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 65 6b c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89e1ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1e 9e c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 35 ba 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 26 ba 5e}
0302h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86b6600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 66 6b c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89e1ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1e 9e c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 34 ba 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 25 ba 5e}
0341h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86b65f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 65 6b c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89e1ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1e 9e c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 34 ba 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 25 ba 5e}
0380h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86b6660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 66 6b c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89e1ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1e 9e c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 34 ba 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 25 ba 5e}
03bch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86b65d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 65 6b c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89e1ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 1e 9e c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 34 ba 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 25 ba 5e}
03f8h mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86b6680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 66 6b c8 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
0420h mov rcx,7ff7c808d2d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d2 08 c8 f7 7f 00 00}
042ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 33 ba 5e}
042fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0432h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0436h mov rcx,7ff7c7726f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 72 c7 f7 7f 00 00}
0440h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb b6 b4 5e}
0445h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0448h mov rcx,7ff7c7989f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9f 98 c7 f7 7f 00 00}
0452h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 33 ba 5e}
0457h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
045ah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
045fh mov rdx,7ff7c7b7a5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 a5 b7 c7 f7 7f 00 00}
0469h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 92 cc}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<ushort>> lookup<ushort>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_g[16u](n128,BinaryBitLogicKind~8u)[1132] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 98 1b 9e c8 f7 7f 00 00 e8 b2 2e ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 1f ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 66 6b c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 98 1b 9e c8 f7 7f 00 00 e8 73 2e ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 1f ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 67 6b c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 98 1b 9e c8 f7 7f 00 00 e8 34 2e ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 1f ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 67 6b c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 98 1b 9e c8 f7 7f 00 00 e8 f5 2d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 1f ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 66 6b c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 98 1b 9e c8 f7 7f 00 00 e8 b6 2d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 1e ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 67 6b c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 98 1b 9e c8 f7 7f 00 00 e8 77 2d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 1e ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 67 6b c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 98 1b 9e c8 f7 7f 00 00 e8 38 2d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 1e ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 67 6b c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 98 1b 9e c8 f7 7f 00 00 e8 f9 2c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2a 1e ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 67 6b c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 98 1b 9e c8 f7 7f 00 00 e8 ba 2c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb 1d ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 67 6b c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 98 1b 9e c8 f7 7f 00 00 e8 7b 2c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac 1d ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 67 6b c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 98 1b 9e c8 f7 7f 00 00 e8 3c 2c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d 1d ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 66 6b c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 98 1b 9e c8 f7 7f 00 00 e8 fd 2b ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2e 1d ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 67 6b c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 98 1b 9e c8 f7 7f 00 00 e8 be 2b ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ef 1c ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 67 6b c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 98 1b 9e c8 f7 7f 00 00 e8 7f 2b ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b0 1c ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 67 6b c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 98 1b 9e c8 f7 7f 00 00 e8 43 2b ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 1c ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 66 6b c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 98 1b 9e c8 f7 7f 00 00 e8 07 2b ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 1c ba 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 90 67 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d8 d2 08 c8 f7 7f 00 00 e8 c1 2a ba 5e 48 8b f8 40 88 77 08 48 b9 38 87 72 c7 f7 7f 00 00 e8 eb ad b4 5e 48 8b f0 48 b9 68 9f 98 c7 f7 7f 00 00 e8 99 2a ba 5e 48 8b d8 b9 4c 04 00 00 48 ba d8 a5 b7 c7 f7 7f 00 00 e8 82 c3}
; TermCode = CTC_RET_INTR
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
002fh mov rcx,7ff7c89e1b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1b 9e c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 2e ba 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 1f ba 5e}
004dh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86b66c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 66 6b c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89e1b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1b 9e c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 2e ba 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 1f ba 5e}
008ch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86b67b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 67 6b c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89e1b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1b 9e c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 2e ba 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 1f ba 5e}
00cbh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86b67a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 67 6b c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89e1b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1b 9e c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 2d ba 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 1f ba 5e}
010ah mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86b66d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 66 6b c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89e1b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1b 9e c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 2d ba 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 1e ba 5e}
0149h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86b6740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 67 6b c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89e1b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1b 9e c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 2d ba 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 1e ba 5e}
0188h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86b6730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 67 6b c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89e1b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1b 9e c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 2d ba 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 1e ba 5e}
01c7h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86b6750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 67 6b c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89e1b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1b 9e c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 2c ba 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 1e ba 5e}
0206h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86b6720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 67 6b c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89e1b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1b 9e c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 2c ba 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 1d ba 5e}
0245h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86b6780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 67 6b c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89e1b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1b 9e c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 2c ba 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 1d ba 5e}
0284h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86b6760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 67 6b c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89e1b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1b 9e c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 2c ba 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 1d ba 5e}
02c3h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86b66f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 66 6b c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89e1b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1b 9e c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 2b ba 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 1d ba 5e}
0302h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86b6710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 67 6b c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89e1b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1b 9e c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 2b ba 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 1c ba 5e}
0341h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86b6700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 67 6b c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89e1b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1b 9e c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 2b ba 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 1c ba 5e}
0380h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86b6770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 67 6b c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89e1b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1b 9e c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 2b ba 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 1c ba 5e}
03bch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86b66e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 66 6b c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89e1b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1b 9e c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 2b ba 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 1c ba 5e}
03f8h mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86b6790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 67 6b c8 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
0420h mov rcx,7ff7c808d2d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d2 08 c8 f7 7f 00 00}
042ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 2a ba 5e}
042fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0432h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0436h mov rcx,7ff7c7728738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 72 c7 f7 7f 00 00}
0440h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb ad b4 5e}
0445h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0448h mov rcx,7ff7c7989f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9f 98 c7 f7 7f 00 00}
0452h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 2a ba 5e}
0457h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
045ah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
045fh mov rdx,7ff7c7b7a5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 a5 b7 c7 f7 7f 00 00}
0469h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 82 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<short>> lookup<short>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_g[16i](n128,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 e8 19 9e c8 f7 7f 00 00 e8 a2 29 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 1a ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 67 6b c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 e8 19 9e c8 f7 7f 00 00 e8 63 29 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 1a ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 68 6b c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 e8 19 9e c8 f7 7f 00 00 e8 24 29 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 1a ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 68 6b c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 e8 19 9e c8 f7 7f 00 00 e8 e5 28 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 16 1a ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 67 6b c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 e8 19 9e c8 f7 7f 00 00 e8 a6 28 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d7 19 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 68 6b c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 e8 19 9e c8 f7 7f 00 00 e8 67 28 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 19 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 68 6b c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 e8 19 9e c8 f7 7f 00 00 e8 28 28 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 19 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 68 6b c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 e8 19 9e c8 f7 7f 00 00 e8 e9 27 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1a 19 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 68 6b c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 e8 19 9e c8 f7 7f 00 00 e8 aa 27 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db 18 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 68 6b c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 e8 19 9e c8 f7 7f 00 00 e8 6b 27 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c 18 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 68 6b c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 e8 19 9e c8 f7 7f 00 00 e8 2c 27 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d 18 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 68 6b c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e8 19 9e c8 f7 7f 00 00 e8 ed 26 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1e 18 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 68 6b c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e8 19 9e c8 f7 7f 00 00 e8 ae 26 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 df 17 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 68 6b c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e8 19 9e c8 f7 7f 00 00 e8 6f 26 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a0 17 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 68 6b c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e8 19 9e c8 f7 7f 00 00 e8 33 26 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 17 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 67 6b c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e8 19 9e c8 f7 7f 00 00 e8 f7 25 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 17 ba 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 a0 68 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89e19e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 19 9e c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 29 ba 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 1a ba 5e}
004dh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86b67d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 67 6b c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89e19e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 19 9e c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 29 ba 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 1a ba 5e}
008ch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86b68c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 68 6b c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89e19e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 19 9e c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 29 ba 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 1a ba 5e}
00cbh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86b68b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 68 6b c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89e19e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 19 9e c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 28 ba 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 1a ba 5e}
010ah mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86b67e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 67 6b c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89e19e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 19 9e c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 28 ba 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 19 ba 5e}
0149h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86b6850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 68 6b c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89e19e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 19 9e c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 28 ba 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 19 ba 5e}
0188h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86b6840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 68 6b c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89e19e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 19 9e c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 28 ba 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 19 ba 5e}
01c7h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86b6860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 68 6b c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89e19e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 19 9e c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 27 ba 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 19 ba 5e}
0206h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86b6830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 68 6b c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89e19e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 19 9e c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 27 ba 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 18 ba 5e}
0245h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86b6890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 68 6b c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89e19e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 19 9e c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 27 ba 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 18 ba 5e}
0284h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86b6870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 68 6b c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89e19e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 19 9e c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 27 ba 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 18 ba 5e}
02c3h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86b6800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 68 6b c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89e19e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 19 9e c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 26 ba 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 18 ba 5e}
0302h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86b6820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 68 6b c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89e19e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 19 9e c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 26 ba 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 17 ba 5e}
0341h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86b6810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 68 6b c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89e19e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 19 9e c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 26 ba 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 17 ba 5e}
0380h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86b6880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 68 6b c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89e19e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 19 9e c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 26 ba 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 17 ba 5e}
03bch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86b67f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 67 6b c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89e19e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 19 9e c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 25 ba 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 17 ba 5e}
03f8h mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86b68a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 68 6b c8 f7 7f 00 00}
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
; lookup_g[32u](n128,BinaryBitLogicKind~8u)[74] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 38 2d 9e c8 f7 7f 00 00 e8 92 24 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
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
002fh mov rcx,7ff7c89e2d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2d 9e c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 24 ba 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector128<int>> lookup<int>(N128 w, BinaryBitLogicKind:byte kind)
; lookup_g[32i](n128,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 08 2a 9e c8 f7 7f 00 00 e8 82 1f ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 10 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 72 6b c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 08 2a 9e c8 f7 7f 00 00 e8 43 1f ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 10 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 73 6b c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 08 2a 9e c8 f7 7f 00 00 e8 04 1f ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 10 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 73 6b c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 08 2a 9e c8 f7 7f 00 00 e8 c5 1e ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 0f ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 72 6b c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 08 2a 9e c8 f7 7f 00 00 e8 86 1e ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 0f ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 73 6b c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 08 2a 9e c8 f7 7f 00 00 e8 47 1e ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 0f ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 73 6b c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 08 2a 9e c8 f7 7f 00 00 e8 08 1e ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 0f ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 73 6b c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 08 2a 9e c8 f7 7f 00 00 e8 c9 1d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa 0e ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 73 6b c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 08 2a 9e c8 f7 7f 00 00 e8 8a 1d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb 0e ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 73 6b c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 08 2a 9e c8 f7 7f 00 00 e8 4b 1d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c 0e ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 73 6b c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 08 2a 9e c8 f7 7f 00 00 e8 0c 1d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d 0e ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 72 6b c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 08 2a 9e c8 f7 7f 00 00 e8 cd 1c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe 0d ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 72 6b c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 08 2a 9e c8 f7 7f 00 00 e8 8e 1c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf 0d ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 72 6b c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 08 2a 9e c8 f7 7f 00 00 e8 4f 1c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 80 0d ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 73 6b c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 08 2a 9e c8 f7 7f 00 00 e8 13 1c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 0d ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 72 6b c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 08 2a 9e c8 f7 7f 00 00 e8 d7 1b ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 0d ba 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 70 73 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89e2a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 2a 9e c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 1f ba 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 10 ba 5e}
004dh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86b72a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 72 6b c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89e2a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 2a 9e c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 1f ba 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 10 ba 5e}
008ch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86b7390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 73 6b c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89e2a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 2a 9e c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 1f ba 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 10 ba 5e}
00cbh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86b7380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 73 6b c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89e2a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 2a 9e c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 1e ba 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 0f ba 5e}
010ah mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86b72b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 72 6b c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89e2a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 2a 9e c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 1e ba 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 0f ba 5e}
0149h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86b7320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 73 6b c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89e2a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 2a 9e c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 1e ba 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 0f ba 5e}
0188h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86b7310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 73 6b c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89e2a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 2a 9e c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 1e ba 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 0f ba 5e}
01c7h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86b7330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 73 6b c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89e2a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 2a 9e c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 1d ba 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 0e ba 5e}
0206h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86b7300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 73 6b c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89e2a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 2a 9e c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 1d ba 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 0e ba 5e}
0245h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86b7360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 73 6b c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89e2a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 2a 9e c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 1d ba 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 0e ba 5e}
0284h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86b7340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 73 6b c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89e2a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 2a 9e c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 1d ba 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 0e ba 5e}
02c3h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86b72d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 72 6b c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89e2a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 2a 9e c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 1c ba 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 0d ba 5e}
0302h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86b72f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 72 6b c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89e2a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 2a 9e c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 1c ba 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 0d ba 5e}
0341h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86b72e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 72 6b c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89e2a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 2a 9e c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 1c ba 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 0d ba 5e}
0380h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86b7350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 73 6b c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89e2a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 2a 9e c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 1c ba 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 0d ba 5e}
03bch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86b72c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 72 6b c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89e2a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 2a 9e c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 1b ba 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 0d ba 5e}
03f8h mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86b7370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 73 6b c8 f7 7f 00 00}
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
; lookup_g[64u](n128,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 58 25 9e c8 f7 7f 00 00 e8 72 1a ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 0b ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 73 6b c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 58 25 9e c8 f7 7f 00 00 e8 33 1a ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 0b ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 74 6b c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 58 25 9e c8 f7 7f 00 00 e8 f4 19 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 0b ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 74 6b c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 58 25 9e c8 f7 7f 00 00 e8 b5 19 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 0a ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 73 6b c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 58 25 9e c8 f7 7f 00 00 e8 76 19 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 0a ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 74 6b c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 58 25 9e c8 f7 7f 00 00 e8 37 19 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 0a ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 74 6b c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 58 25 9e c8 f7 7f 00 00 e8 f8 18 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 0a ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 74 6b c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 58 25 9e c8 f7 7f 00 00 e8 b9 18 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea 09 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 74 6b c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 58 25 9e c8 f7 7f 00 00 e8 7a 18 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab 09 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 74 6b c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 58 25 9e c8 f7 7f 00 00 e8 3b 18 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c 09 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 74 6b c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 58 25 9e c8 f7 7f 00 00 e8 fc 17 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d 09 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 73 6b c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 58 25 9e c8 f7 7f 00 00 e8 bd 17 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee 08 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 74 6b c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 58 25 9e c8 f7 7f 00 00 e8 7e 17 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 af 08 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 73 6b c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 58 25 9e c8 f7 7f 00 00 e8 3f 17 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 70 08 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 74 6b c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 58 25 9e c8 f7 7f 00 00 e8 03 17 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 08 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 73 6b c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 58 25 9e c8 f7 7f 00 00 e8 c7 16 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 07 ba 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 80 74 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89e2558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 25 9e c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 1a ba 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 0b ba 5e}
004dh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86b73b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 73 6b c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89e2558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 25 9e c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 1a ba 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 0b ba 5e}
008ch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86b74a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 74 6b c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89e2558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 25 9e c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 19 ba 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 0b ba 5e}
00cbh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86b7490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 74 6b c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89e2558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 25 9e c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 19 ba 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 0a ba 5e}
010ah mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86b73c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 73 6b c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89e2558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 25 9e c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 19 ba 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 0a ba 5e}
0149h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86b7430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 74 6b c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89e2558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 25 9e c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 19 ba 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 0a ba 5e}
0188h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86b7420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 74 6b c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89e2558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 25 9e c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 18 ba 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 0a ba 5e}
01c7h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86b7440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 74 6b c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89e2558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 25 9e c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 18 ba 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 09 ba 5e}
0206h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86b7410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 74 6b c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89e2558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 25 9e c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 18 ba 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 09 ba 5e}
0245h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86b7470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 74 6b c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89e2558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 25 9e c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 18 ba 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 09 ba 5e}
0284h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86b7450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 74 6b c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89e2558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 25 9e c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 17 ba 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 09 ba 5e}
02c3h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86b73e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 73 6b c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89e2558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 25 9e c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 17 ba 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 08 ba 5e}
0302h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86b7400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 74 6b c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89e2558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 25 9e c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 17 ba 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 08 ba 5e}
0341h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86b73f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 73 6b c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89e2558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 25 9e c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 17 ba 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 08 ba 5e}
0380h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86b7460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 74 6b c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89e2558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 25 9e c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 17 ba 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 08 ba 5e}
03bch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86b73d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 73 6b c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89e2558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 25 9e c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 16 ba 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 07 ba 5e}
03f8h mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86b7480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 74 6b c8 f7 7f 00 00}
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
; lookup_g[64i](n128,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 68 30 9e c8 f7 7f 00 00 e8 62 15 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 06 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 74 6b c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 68 30 9e c8 f7 7f 00 00 e8 23 15 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 06 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 75 6b c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 68 30 9e c8 f7 7f 00 00 e8 e4 14 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 06 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 75 6b c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 68 30 9e c8 f7 7f 00 00 e8 a5 14 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 05 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 74 6b c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 68 30 9e c8 f7 7f 00 00 e8 66 14 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 05 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 75 6b c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 68 30 9e c8 f7 7f 00 00 e8 27 14 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 05 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 75 6b c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 68 30 9e c8 f7 7f 00 00 e8 e8 13 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 05 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 75 6b c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 68 30 9e c8 f7 7f 00 00 e8 a9 13 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 da 04 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 75 6b c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 68 30 9e c8 f7 7f 00 00 e8 6a 13 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b 04 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 75 6b c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 68 30 9e c8 f7 7f 00 00 e8 2b 13 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c 04 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 75 6b c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 68 30 9e c8 f7 7f 00 00 e8 ec 12 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d 04 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 74 6b c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 68 30 9e c8 f7 7f 00 00 e8 ad 12 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 de 03 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 75 6b c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 68 30 9e c8 f7 7f 00 00 e8 6e 12 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f 03 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 75 6b c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 68 30 9e c8 f7 7f 00 00 e8 2f 12 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 03 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 75 6b c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 68 30 9e c8 f7 7f 00 00 e8 f3 11 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 03 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 74 6b c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 68 30 9e c8 f7 7f 00 00 e8 b7 11 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 02 ba 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 90 75 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89e3068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 30 9e c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 15 ba 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 06 ba 5e}
004dh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86b74c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 74 6b c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89e3068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 30 9e c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 15 ba 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 06 ba 5e}
008ch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86b75b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 75 6b c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89e3068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 30 9e c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 14 ba 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 06 ba 5e}
00cbh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86b75a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 75 6b c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89e3068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 30 9e c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 14 ba 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 05 ba 5e}
010ah mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86b74d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 74 6b c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89e3068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 30 9e c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 14 ba 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 05 ba 5e}
0149h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86b7540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 75 6b c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89e3068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 30 9e c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 14 ba 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 05 ba 5e}
0188h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86b7530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 75 6b c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89e3068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 30 9e c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 13 ba 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 05 ba 5e}
01c7h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86b7550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 75 6b c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89e3068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 30 9e c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 13 ba 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 04 ba 5e}
0206h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86b7520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 75 6b c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89e3068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 30 9e c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 13 ba 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 04 ba 5e}
0245h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86b7580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 75 6b c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89e3068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 30 9e c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 13 ba 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 04 ba 5e}
0284h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86b7560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 75 6b c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89e3068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 30 9e c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 12 ba 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 04 ba 5e}
02c3h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86b74f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 74 6b c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89e3068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 30 9e c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 12 ba 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 03 ba 5e}
0302h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86b7510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 75 6b c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89e3068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 30 9e c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 12 ba 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 03 ba 5e}
0341h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86b7500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 75 6b c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89e3068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 30 9e c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 12 ba 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 03 ba 5e}
0380h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86b7570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 75 6b c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89e3068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 30 9e c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 11 ba 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 03 ba 5e}
03bch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86b74e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 74 6b c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89e3068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 30 9e c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 11 ba 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 02 ba 5e}
03f8h mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86b7590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 75 6b c8 f7 7f 00 00}
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
; lookup_g[8u](n256,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 68 50 9e c8 f7 7f 00 00 e8 52 10 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 01 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 76 6b c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 68 50 9e c8 f7 7f 00 00 e8 13 10 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 01 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 83 6b c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 68 50 9e c8 f7 7f 00 00 e8 d4 0f ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 01 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 83 6b c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 68 50 9e c8 f7 7f 00 00 e8 95 0f ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 00 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 82 6b c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 68 50 9e c8 f7 7f 00 00 e8 56 0f ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 00 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 82 6b c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 68 50 9e c8 f7 7f 00 00 e8 17 0f ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 00 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 82 6b c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 68 50 9e c8 f7 7f 00 00 e8 d8 0e ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 00 ba 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 83 6b c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 68 50 9e c8 f7 7f 00 00 e8 99 0e ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca ff b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 82 6b c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 68 50 9e c8 f7 7f 00 00 e8 5a 0e ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b ff b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 83 6b c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 68 50 9e c8 f7 7f 00 00 e8 1b 0e ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c ff b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 83 6b c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 68 50 9e c8 f7 7f 00 00 e8 dc 0d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d ff b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 82 6b c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 68 50 9e c8 f7 7f 00 00 e8 9d 0d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce fe b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 82 6b c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 68 50 9e c8 f7 7f 00 00 e8 5e 0d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f fe b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 82 6b c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 68 50 9e c8 f7 7f 00 00 e8 1f 0d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 fe b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 83 6b c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 68 50 9e c8 f7 7f 00 00 e8 e3 0c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 fe b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 82 6b c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 68 50 9e c8 f7 7f 00 00 e8 a7 0c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 fd b9 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 90 83 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89e5068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 50 9e c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 10 ba 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 01 ba 5e}
004dh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86b7660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 76 6b c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89e5068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 50 9e c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 10 ba 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 01 ba 5e}
008ch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86b83d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 83 6b c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89e5068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 50 9e c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 0f ba 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 01 ba 5e}
00cbh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86b83b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 83 6b c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89e5068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 50 9e c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 0f ba 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 00 ba 5e}
010ah mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86b8210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 82 6b c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89e5068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 50 9e c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 0f ba 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 00 ba 5e}
0149h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86b82f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 82 6b c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89e5068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 50 9e c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 0f ba 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 00 ba 5e}
0188h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86b82d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 82 6b c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89e5068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 50 9e c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 0e ba 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 00 ba 5e}
01c7h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86b8310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 83 6b c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89e5068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 50 9e c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 0e ba 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca ff b9 5e}
0206h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86b82b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 82 6b c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89e5068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 50 9e c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 0e ba 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b ff b9 5e}
0245h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86b8370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 83 6b c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89e5068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 50 9e c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 0e ba 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c ff b9 5e}
0284h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86b8330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 83 6b c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89e5068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 50 9e c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 0d ba 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d ff b9 5e}
02c3h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86b8250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 82 6b c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89e5068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 50 9e c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 0d ba 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce fe b9 5e}
0302h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86b8290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 82 6b c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89e5068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 50 9e c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 0d ba 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f fe b9 5e}
0341h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86b8270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 82 6b c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89e5068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 50 9e c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 0d ba 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 fe b9 5e}
0380h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86b8350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 83 6b c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89e5068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 50 9e c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 0c ba 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 fe b9 5e}
03bch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86b8230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 82 6b c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89e5068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 50 9e c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 0c ba 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 fd b9 5e}
03f8h mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86b8390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 83 6b c8 f7 7f 00 00}
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
; lookup_g[8i](n256,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 38 4d 9e c8 f7 7f 00 00 e8 42 0b ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 fc b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 84 6b c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 38 4d 9e c8 f7 7f 00 00 e8 03 0b ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 fc b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 85 6b c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 38 4d 9e c8 f7 7f 00 00 e8 c4 0a ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 fb b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 85 6b c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 38 4d 9e c8 f7 7f 00 00 e8 85 0a ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 fb b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 84 6b c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 38 4d 9e c8 f7 7f 00 00 e8 46 0a ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 fb b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 85 6b c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 38 4d 9e c8 f7 7f 00 00 e8 07 0a ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 fb b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 85 6b c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 38 4d 9e c8 f7 7f 00 00 e8 c8 09 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 fa b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 85 6b c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 38 4d 9e c8 f7 7f 00 00 e8 89 09 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba fa b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 85 6b c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 38 4d 9e c8 f7 7f 00 00 e8 4a 09 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b fa b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 85 6b c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 38 4d 9e c8 f7 7f 00 00 e8 0b 09 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c fa b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 85 6b c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 38 4d 9e c8 f7 7f 00 00 e8 cc 08 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd f9 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 85 6b c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 38 4d 9e c8 f7 7f 00 00 e8 8d 08 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be f9 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 85 6b c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 38 4d 9e c8 f7 7f 00 00 e8 4e 08 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f f9 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 85 6b c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 38 4d 9e c8 f7 7f 00 00 e8 0f 08 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 f9 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 85 6b c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 38 4d 9e c8 f7 7f 00 00 e8 d3 07 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 f9 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 84 6b c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 38 4d 9e c8 f7 7f 00 00 e8 97 07 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 f8 b9 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 a0 85 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89e4d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4d 9e c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 0b ba 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 fc b9 5e}
004dh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86b84d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 84 6b c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89e4d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4d 9e c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 0b ba 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 fc b9 5e}
008ch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86b85c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 85 6b c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89e4d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4d 9e c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 0a ba 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 fb b9 5e}
00cbh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86b85b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 85 6b c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89e4d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4d 9e c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 0a ba 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 fb b9 5e}
010ah mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86b84e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 84 6b c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89e4d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4d 9e c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 0a ba 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 fb b9 5e}
0149h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86b8550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 85 6b c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89e4d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4d 9e c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 0a ba 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 fb b9 5e}
0188h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86b8540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 85 6b c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89e4d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4d 9e c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 09 ba 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 fa b9 5e}
01c7h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86b8560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 85 6b c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89e4d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4d 9e c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 09 ba 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba fa b9 5e}
0206h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86b8530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 85 6b c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89e4d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4d 9e c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 09 ba 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b fa b9 5e}
0245h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86b8590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 85 6b c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89e4d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4d 9e c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 09 ba 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c fa b9 5e}
0284h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86b8570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 85 6b c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89e4d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4d 9e c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 08 ba 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd f9 b9 5e}
02c3h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86b8500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 85 6b c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89e4d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4d 9e c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 08 ba 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be f9 b9 5e}
0302h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86b8520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 85 6b c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89e4d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4d 9e c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 08 ba 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f f9 b9 5e}
0341h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86b8510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 85 6b c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89e4d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4d 9e c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 08 ba 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 f9 b9 5e}
0380h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86b8580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 85 6b c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89e4d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4d 9e c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 07 ba 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 f9 b9 5e}
03bch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86b84f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 84 6b c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89e4d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4d 9e c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 07 ba 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 f8 b9 5e}
03f8h mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86b85a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 85 6b c8 f7 7f 00 00}
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
; lookup_g[16u](n256,BinaryBitLogicKind~8u)[938] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 40 a7 9c c8 f7 7f 00 00 e8 32 06 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 f7 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 85 6b c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 40 a7 9c c8 f7 7f 00 00 e8 f3 05 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 f7 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 8c 6b c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 40 a7 9c c8 f7 7f 00 00 e8 b4 05 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 f6 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 8c 6b c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 40 a7 9c c8 f7 7f 00 00 e8 75 05 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 f6 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 85 6b c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 40 a7 9c c8 f7 7f 00 00 e8 36 05 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 f6 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 8c 6b c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 40 a7 9c c8 f7 7f 00 00 e8 f7 04 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 f6 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 8c 6b c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 40 a7 9c c8 f7 7f 00 00 e8 b8 04 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 f5 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 8c 6b c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 40 a7 9c c8 f7 7f 00 00 e8 79 04 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa f5 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 8c 6b c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 40 a7 9c c8 f7 7f 00 00 e8 3a 04 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b f5 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 8c 6b c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 40 a7 9c c8 f7 7f 00 00 e8 fb 03 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c f5 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 8c 6b c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 40 a7 9c c8 f7 7f 00 00 e8 bc 03 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed f4 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 8b 6b c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 40 a7 9c c8 f7 7f 00 00 e8 7d 03 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae f4 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 8c 6b c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 40 a7 9c c8 f7 7f 00 00 e8 3e 03 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f f4 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 8c 6b c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 40 a7 9c c8 f7 7f 00 00 e8 ff 02 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 f4 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 8c 6b c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 40 a7 9c c8 f7 7f 00 00 e8 c3}
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
002fh mov rcx,7ff7c89ca740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a7 9c c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 06 ba 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 f7 b9 5e}
004dh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86b85e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 85 6b c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89ca740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a7 9c c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 05 ba 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 f7 b9 5e}
008ch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86b8cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 8c 6b c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89ca740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a7 9c c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 05 ba 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 f6 b9 5e}
00cbh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86b8ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 8c 6b c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89ca740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a7 9c c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 05 ba 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 f6 b9 5e}
010ah mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86b85f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 85 6b c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89ca740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a7 9c c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 05 ba 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 f6 b9 5e}
0149h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86b8c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 8c 6b c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89ca740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a7 9c c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 04 ba 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 f6 b9 5e}
0188h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86b8c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 8c 6b c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89ca740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a7 9c c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 04 ba 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 f5 b9 5e}
01c7h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86b8c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 8c 6b c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89ca740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a7 9c c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 04 ba 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa f5 b9 5e}
0206h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86b8c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 8c 6b c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89ca740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a7 9c c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 04 ba 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b f5 b9 5e}
0245h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86b8c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 8c 6b c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89ca740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a7 9c c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 03 ba 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c f5 b9 5e}
0284h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86b8c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8c 6b c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89ca740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a7 9c c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 03 ba 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed f4 b9 5e}
02c3h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86b8bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 8b 6b c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89ca740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a7 9c c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 03 ba 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae f4 b9 5e}
0302h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86b8c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 8c 6b c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89ca740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a7 9c c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 03 ba 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f f4 b9 5e}
0341h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86b8c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8c 6b c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89ca740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a7 9c c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 02 ba 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 f4 b9 5e}
0380h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86b8c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 8c 6b c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89ca740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a7 9c c8 f7 7f 00 00}
03a8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<short>> lookup<short>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_g[16i](n256,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 48 1d 9e c8 f7 7f 00 00 e8 22 01 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 f2 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 8c 6b c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 48 1d 9e c8 f7 7f 00 00 e8 e3 00 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 f2 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 8d 6b c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 48 1d 9e c8 f7 7f 00 00 e8 a4 00 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 f1 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 8d 6b c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 48 1d 9e c8 f7 7f 00 00 e8 65 00 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 f1 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 8c 6b c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 48 1d 9e c8 f7 7f 00 00 e8 26 00 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 f1 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 8d 6b c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 48 1d 9e c8 f7 7f 00 00 e8 e7 ff b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 f1 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 8d 6b c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 48 1d 9e c8 f7 7f 00 00 e8 a8 ff b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 f0 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 8d 6b c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 48 1d 9e c8 f7 7f 00 00 e8 69 ff b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a f0 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 8d 6b c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 48 1d 9e c8 f7 7f 00 00 e8 2a ff b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b f0 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 8d 6b c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 48 1d 9e c8 f7 7f 00 00 e8 eb fe b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c f0 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 8d 6b c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 48 1d 9e c8 f7 7f 00 00 e8 ac fe b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd ef b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 8d 6b c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 48 1d 9e c8 f7 7f 00 00 e8 6d fe b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e ef b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 8d 6b c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 48 1d 9e c8 f7 7f 00 00 e8 2e fe b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f ef b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 8d 6b c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 48 1d 9e c8 f7 7f 00 00 e8 ef fd b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 ef b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 8d 6b c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 48 1d 9e c8 f7 7f 00 00 e8 b3 fd b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 ee b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 8c 6b c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 48 1d 9e c8 f7 7f 00 00 e8 77 fd b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 ee b9 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 a8 8d 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89e1d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1d 9e c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 01 ba 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 f2 b9 5e}
004dh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86b8cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 8c 6b c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89e1d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1d 9e c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 00 ba 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 f2 b9 5e}
008ch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86b8dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 8d 6b c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89e1d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1d 9e c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 00 ba 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 f1 b9 5e}
00cbh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86b8db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 8d 6b c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89e1d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1d 9e c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 00 ba 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 f1 b9 5e}
010ah mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86b8ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 8c 6b c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89e1d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1d 9e c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 00 ba 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 f1 b9 5e}
0149h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86b8d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 8d 6b c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89e1d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1d 9e c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 ff b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 f1 b9 5e}
0188h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86b8d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 8d 6b c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89e1d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1d 9e c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 ff b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 f0 b9 5e}
01c7h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86b8d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8d 6b c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89e1d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1d 9e c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 ff b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a f0 b9 5e}
0206h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86b8d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 8d 6b c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89e1d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1d 9e c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a ff b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b f0 b9 5e}
0245h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86b8d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 8d 6b c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89e1d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1d 9e c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb fe b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c f0 b9 5e}
0284h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86b8d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 8d 6b c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89e1d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1d 9e c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac fe b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd ef b9 5e}
02c3h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86b8d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8d 6b c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89e1d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1d 9e c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d fe b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e ef b9 5e}
0302h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86b8d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 8d 6b c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89e1d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1d 9e c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e fe b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f ef b9 5e}
0341h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86b8d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 8d 6b c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89e1d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1d 9e c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef fd b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 ef b9 5e}
0380h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86b8d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 8d 6b c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89e1d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1d 9e c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 fd b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 ee b9 5e}
03bch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86b8cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 8c 6b c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89e1d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1d 9e c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 fd b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 ee b9 5e}
03f8h mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86b8da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 8d 6b c8 f7 7f 00 00}
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
; lookup_g[32u](n256,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 c8 59 9e c8 f7 7f 00 00 e8 12 fc b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 ed b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 8d 6b c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c8 59 9e c8 f7 7f 00 00 e8 d3 fb b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 ed b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 8e 6b c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 c8 59 9e c8 f7 7f 00 00 e8 94 fb b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 ec b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 8e 6b c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 c8 59 9e c8 f7 7f 00 00 e8 55 fb b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 86 ec b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 8d 6b c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 c8 59 9e c8 f7 7f 00 00 e8 16 fb b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 47 ec b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 8e 6b c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 c8 59 9e c8 f7 7f 00 00 e8 d7 fa b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 ec b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 8e 6b c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 c8 59 9e c8 f7 7f 00 00 e8 98 fa b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 eb b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 8e 6b c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 c8 59 9e c8 f7 7f 00 00 e8 59 fa b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8a eb b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 8e 6b c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 c8 59 9e c8 f7 7f 00 00 e8 1a fa b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b eb b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 8e 6b c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 c8 59 9e c8 f7 7f 00 00 e8 db f9 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c eb b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 8e 6b c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 c8 59 9e c8 f7 7f 00 00 e8 9c f9 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd ea b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 8e 6b c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c8 59 9e c8 f7 7f 00 00 e8 5d f9 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8e ea b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 8e 6b c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c8 59 9e c8 f7 7f 00 00 e8 1e f9 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4f ea b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 8e 6b c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c8 59 9e c8 f7 7f 00 00 e8 df f8 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 10 ea b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 8e 6b c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c8 59 9e c8 f7 7f 00 00 e8 a3 f8 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 e9 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 8e 6b c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c8 59 9e c8 f7 7f 00 00 e8 67 f8 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 e9 b9 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 b8 8e 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89e59c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 9e c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 fc b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 ed b9 5e}
004dh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86b8de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 8d 6b c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89e59c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 9e c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 fb b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 ed b9 5e}
008ch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86b8ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 8e 6b c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89e59c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 9e c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 fb b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 ec b9 5e}
00cbh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86b8ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 8e 6b c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89e59c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 9e c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 fb b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 ec b9 5e}
010ah mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86b8df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 8d 6b c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89e59c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 9e c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 fb b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 ec b9 5e}
0149h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86b8e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 8e 6b c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89e59c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 9e c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 fa b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 ec b9 5e}
0188h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86b8e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 8e 6b c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89e59c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 9e c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 fa b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 eb b9 5e}
01c7h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86b8e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 8e 6b c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89e59c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 9e c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 fa b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a eb b9 5e}
0206h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86b8e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 8e 6b c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89e59c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 9e c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a fa b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b eb b9 5e}
0245h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86b8ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 8e 6b c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89e59c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 9e c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db f9 b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c eb b9 5e}
0284h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86b8e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 8e 6b c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89e59c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 9e c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c f9 b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd ea b9 5e}
02c3h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86b8e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 8e 6b c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89e59c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 9e c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d f9 b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e ea b9 5e}
0302h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86b8e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 8e 6b c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89e59c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 9e c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e f9 b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f ea b9 5e}
0341h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86b8e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 8e 6b c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89e59c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 9e c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df f8 b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 ea b9 5e}
0380h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86b8e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 8e 6b c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89e59c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 9e c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 f8 b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 e9 b9 5e}
03bch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86b8e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8e 6b c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89e59c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 9e c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 f8 b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 e9 b9 5e}
03f8h mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86b8eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 8e 6b c8 f7 7f 00 00}
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
; lookup_g[32i](n256,BinaryBitLogicKind~8u)[122] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 98 56 9e c8 f7 7f 00 00 e8 02 f7 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 e8 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 8e 6b c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 98 56 9e c8 f7 7f 00 00 e8 c3}
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
002fh mov rcx,7ff7c89e5698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 56 9e c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 f7 b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 e8 b9 5e}
004dh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86b8ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 8e 6b c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89e5698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 56 9e c8 f7 7f 00 00}
0078h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ulong>> lookup<ulong>(N256 w, BinaryBitLogicKind:byte kind)
; lookup_g[64u](n256,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 28 60 9e c8 f7 7f 00 00 e8 f2 f1 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 e3 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 9b 6b c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 28 60 9e c8 f7 7f 00 00 e8 b3 f1 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 e2 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 9c 6b c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 28 60 9e c8 f7 7f 00 00 e8 74 f1 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 e2 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 9c 6b c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 28 60 9e c8 f7 7f 00 00 e8 35 f1 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 66 e2 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 9b 6b c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 28 60 9e c8 f7 7f 00 00 e8 f6 f0 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 27 e2 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 9c 6b c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 28 60 9e c8 f7 7f 00 00 e8 b7 f0 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 e1 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 9c 6b c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 28 60 9e c8 f7 7f 00 00 e8 78 f0 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 e1 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 9c 6b c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 28 60 9e c8 f7 7f 00 00 e8 39 f0 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6a e1 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 9c 6b c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 28 60 9e c8 f7 7f 00 00 e8 fa ef b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2b e1 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 9c 6b c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 28 60 9e c8 f7 7f 00 00 e8 bb ef b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec e0 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 9c 6b c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 28 60 9e c8 f7 7f 00 00 e8 7c ef b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad e0 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 9b 6b c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 28 60 9e c8 f7 7f 00 00 e8 3d ef b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6e e0 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 9c 6b c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 28 60 9e c8 f7 7f 00 00 e8 fe ee b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2f e0 b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 9c 6b c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 28 60 9e c8 f7 7f 00 00 e8 bf ee b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f0 df b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 9c 6b c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 28 60 9e c8 f7 7f 00 00 e8 83 ee b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 df b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 9b 6b c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 28 60 9e c8 f7 7f 00 00 e8 47 ee b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 df b9 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 98 9c 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89e6028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 60 9e c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 f1 b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 e3 b9 5e}
004dh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86b9bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 9b 6b c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89e6028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 60 9e c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 f1 b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 e2 b9 5e}
008ch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86b9cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 9c 6b c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89e6028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 60 9e c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 f1 b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 e2 b9 5e}
00cbh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86b9ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9c 6b c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89e6028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 60 9e c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 f1 b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 e2 b9 5e}
010ah mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86b9bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 9b 6b c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89e6028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 60 9e c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 f0 b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 e2 b9 5e}
0149h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86b9c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 9c 6b c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89e6028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 60 9e c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 f0 b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 e1 b9 5e}
0188h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86b9c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 9c 6b c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89e6028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 60 9e c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 f0 b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 e1 b9 5e}
01c7h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86b9c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 9c 6b c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89e6028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 60 9e c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 f0 b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a e1 b9 5e}
0206h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86b9c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 9c 6b c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89e6028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 60 9e c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa ef b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b e1 b9 5e}
0245h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86b9c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 9c 6b c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89e6028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 60 9e c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb ef b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec e0 b9 5e}
0284h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86b9c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9c 6b c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89e6028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 60 9e c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c ef b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad e0 b9 5e}
02c3h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86b9bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 9b 6b c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89e6028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 60 9e c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d ef b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e e0 b9 5e}
0302h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86b9c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 9c 6b c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89e6028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 60 9e c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe ee b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f e0 b9 5e}
0341h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86b9c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 9c 6b c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89e6028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 60 9e c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf ee b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 df b9 5e}
0380h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86b9c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 9c 6b c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89e6028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 60 9e c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 ee b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 df b9 5e}
03bch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86b9be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 9b 6b c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89e6028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 60 9e c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 ee b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 df b9 5e}
03f8h mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86b9c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 9c 6b c8 f7 7f 00 00}
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
; lookup_g[64i](n256,BinaryBitLogicKind~8u)[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 f8 5c 9e c8 f7 7f 00 00 e8 e2 ec b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 de b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 9c 6b c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 f8 5c 9e c8 f7 7f 00 00 e8 a3 ec b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 dd b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 9d 6b c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 f8 5c 9e c8 f7 7f 00 00 e8 64 ec b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 dd b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 9d 6b c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 f8 5c 9e c8 f7 7f 00 00 e8 25 ec b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 dd b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 9c 6b c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 f8 5c 9e c8 f7 7f 00 00 e8 e6 eb b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 dd b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 9d 6b c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 f8 5c 9e c8 f7 7f 00 00 e8 a7 eb b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 dc b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 9d 6b c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 f8 5c 9e c8 f7 7f 00 00 e8 68 eb b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 dc b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 9d 6b c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 f8 5c 9e c8 f7 7f 00 00 e8 29 eb b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a dc b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 9d 6b c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 f8 5c 9e c8 f7 7f 00 00 e8 ea ea b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b dc b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 9d 6b c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 f8 5c 9e c8 f7 7f 00 00 e8 ab ea b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dc db b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 9d 6b c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 f8 5c 9e c8 f7 7f 00 00 e8 6c ea b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d db b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 9d 6b c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f8 5c 9e c8 f7 7f 00 00 e8 2d ea b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5e db b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 9d 6b c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f8 5c 9e c8 f7 7f 00 00 e8 ee e9 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1f db b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 9d 6b c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f8 5c 9e c8 f7 7f 00 00 e8 af e9 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e0 da b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 9d 6b c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f8 5c 9e c8 f7 7f 00 00 e8 73 e9 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 da b9 5e 48 b9 20 e2 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 9c 6b c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f8 5c 9e c8 f7 7f 00 00 e8 37 e9 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 da b9 5e 48 b8 20 e2 62 c7 f7 7f 00 00 48 89 46 18 48 b8 a8 9d 6b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c89e5cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5c 9e c8 f7 7f 00 00}
0039h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 ec b9 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 de b9 5e}
004dh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c86b9cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 9c 6b c8 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c89e5cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5c 9e c8 f7 7f 00 00}
0078h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 ec b9 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 dd b9 5e}
008ch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c86b9dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 9d 6b c8 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c89e5cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5c 9e c8 f7 7f 00 00}
00b7h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 ec b9 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 dd b9 5e}
00cbh mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c86b9db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 9d 6b c8 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c89e5cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5c 9e c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 ec b9 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 dd b9 5e}
010ah mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c86b9ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 9c 6b c8 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c89e5cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5c 9e c8 f7 7f 00 00}
0135h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 eb b9 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 dd b9 5e}
0149h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c86b9d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 9d 6b c8 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c89e5cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5c 9e c8 f7 7f 00 00}
0174h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 eb b9 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 dc b9 5e}
0188h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c86b9d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 9d 6b c8 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c89e5cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5c 9e c8 f7 7f 00 00}
01b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 eb b9 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 dc b9 5e}
01c7h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c86b9d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9d 6b c8 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c89e5cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5c 9e c8 f7 7f 00 00}
01f2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 eb b9 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a dc b9 5e}
0206h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c86b9d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 9d 6b c8 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c89e5cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5c 9e c8 f7 7f 00 00}
0231h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea ea b9 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b dc b9 5e}
0245h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c86b9d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 9d 6b c8 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c89e5cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5c 9e c8 f7 7f 00 00}
0270h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab ea b9 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc db b9 5e}
0284h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c86b9d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 9d 6b c8 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c89e5cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5c 9e c8 f7 7f 00 00}
02afh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c ea b9 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d db b9 5e}
02c3h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c86b9d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 9d 6b c8 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c89e5cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5c 9e c8 f7 7f 00 00}
02eeh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d ea b9 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e db b9 5e}
0302h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c86b9d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 9d 6b c8 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c89e5cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5c 9e c8 f7 7f 00 00}
032dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee e9 b9 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f db b9 5e}
0341h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c86b9d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 9d 6b c8 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c89e5cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5c 9e c8 f7 7f 00 00}
036ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af e9 b9 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 da b9 5e}
0380h mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c86b9d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 9d 6b c8 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c89e5cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5c 9e c8 f7 7f 00 00}
03a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 e9 b9 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 da b9 5e}
03bch mov rcx,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e2 62 c7 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c86b9cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 9c 6b c8 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c89e5cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5c 9e c8 f7 7f 00 00}
03e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 e9 b9 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 da b9 5e}
03f8h mov rax,7ff7c762e220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e2 62 c7 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c86b9da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 9d 6b c8 f7 7f 00 00}
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
; lookup_g[8u](n256,TernaryBitLogicKind~8u)[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 d0 e3 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 d5 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 87 6c c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 91 e3 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 d4 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 87 6c c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 52 e3 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 d4 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 86 6c c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 13 e3 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 d4 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 86 6c c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 d4 e2 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 d4 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 86 6c c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 95 e2 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 d3 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 86 6c c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 56 e2 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 d3 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 86 6c c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 17 e2 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 d3 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 86 6c c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 d8 e1 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 d3 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 86 6c c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 99 e1 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca d2 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 86 6c c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 5a e1 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b d2 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 85 6c c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 1b e1 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c d2 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 85 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 dc e0 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d d2 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 85 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 9d e0 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce d1 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 85 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 5e e0 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f d1 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 85 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 1f e0 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 d1 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 85 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 e0 df b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 d1 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 85 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 a1 df b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 d0 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 85 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 62 df b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 d0 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 84 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 23 df b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 d0 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 84 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 e4 de b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 d0 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 84 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 a5 de b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 cf b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 3d 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 66 de b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 cf b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 3d 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 27 de b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 cf b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 3d 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 e8 dd b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 cf b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 3d 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 ac dd b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd ce b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 3d 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 48 b7 c5 c8 f7 7f 00 00 e8 70 dd b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 ce b9 5e 48 b8 d0 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 08 3d 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 e3 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 d5 b9 5e}
004fh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86c8728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 87 6c c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 e3 b9 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 d4 b9 5e}
008eh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86c8708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 87 6c c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 e3 b9 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 d4 b9 5e}
00cdh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86c86e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 86 6c c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 e3 b9 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 d4 b9 5e}
010ch mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c86c86c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 86 6c c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 e2 b9 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 d4 b9 5e}
014bh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c86c86a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 86 6c c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 e2 b9 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 d3 b9 5e}
018ah mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c86c8688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 86 6c c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 e2 b9 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 d3 b9 5e}
01c9h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c86c8668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 86 6c c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 e2 b9 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 d3 b9 5e}
0208h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c86c8648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 86 6c c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 e1 b9 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 d3 b9 5e}
0247h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c86c8628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 86 6c c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 e1 b9 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca d2 b9 5e}
0286h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c86c8608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 86 6c c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a e1 b9 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b d2 b9 5e}
02c5h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c86c85e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 85 6c c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b e1 b9 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c d2 b9 5e}
0304h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c86c85c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 85 6c c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc e0 b9 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d d2 b9 5e}
0343h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c86c85a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 85 6c c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d e0 b9 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce d1 b9 5e}
0382h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c86c8588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 85 6c c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e e0 b9 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f d1 b9 5e}
03c1h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c86c8568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 85 6c c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f e0 b9 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 d1 b9 5e}
0400h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c86c8548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 85 6c c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 df b9 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 d1 b9 5e}
043fh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c86c8528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 85 6c c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 df b9 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 d0 b9 5e}
047eh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c86c8508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 85 6c c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 df b9 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 d0 b9 5e}
04bdh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c86c84e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 84 6c c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 df b9 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 d0 b9 5e}
04fch mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c86c84c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 84 6c c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 de b9 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 d0 b9 5e}
053bh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c86c84a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 84 6c c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 de b9 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 cf b9 5e}
057ah mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c86c3da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 3d 6c c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 de b9 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 cf b9 5e}
05b9h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c86c3d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 3d 6c c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 de b9 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 cf b9 5e}
05f8h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c86c3d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 3d 6c c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 dd b9 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 cf b9 5e}
0637h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c86c3d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 3d 6c c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac dd b9 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd ce b9 5e}
0673h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c86c3d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3d 6c c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8c5b748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b7 c5 c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 dd b9 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 ce b9 5e}
06afh mov rax,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 ea 62 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c86c3d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 3d 6c c8 f7 7f 00 00}
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
; lookup_g[8i](n256,TernaryBitLogicKind~8u)[1400] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 68 bb c5 c8 f7 7f 00 00 e8 e0 d7 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 c9 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 90 6c c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 68 bb c5 c8 f7 7f 00 00 e8 a1 d7 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 c8 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 90 6c c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 68 bb c5 c8 f7 7f 00 00 e8 62 d7 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 c8 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 90 6c c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 68 bb c5 c8 f7 7f 00 00 e8 23 d7 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 c8 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 90 6c c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 68 bb c5 c8 f7 7f 00 00 e8 e4 d6 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 c8 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 90 6c c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 68 bb c5 c8 f7 7f 00 00 e8 a5 d6 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 c7 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 90 6c c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 68 bb c5 c8 f7 7f 00 00 e8 66 d6 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 c7 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 88 6c c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 68 bb c5 c8 f7 7f 00 00 e8 27 d6 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 c7 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 88 6c c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 68 bb c5 c8 f7 7f 00 00 e8 e8 d5 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 c7 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 88 6c c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 68 bb c5 c8 f7 7f 00 00 e8 a9 d5 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 da c6 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 88 6c c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 68 bb c5 c8 f7 7f 00 00 e8 6a d5 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b c6 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 88 6c c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 68 bb c5 c8 f7 7f 00 00 e8 2b d5 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c c6 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 88 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 68 bb c5 c8 f7 7f 00 00 e8 ec d4 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d c6 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 88 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 68 bb c5 c8 f7 7f 00 00 e8 ad d4 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 de c5 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 88 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 68 bb c5 c8 f7 7f 00 00 e8 6e d4 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f c5 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 88 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 68 bb c5 c8 f7 7f 00 00 e8 2f d4 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 c5 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 87 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 68 bb c5 c8 f7 7f 00 00 e8 f0 d3 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 c5 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 87 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 68 bb c5 c8 f7 7f 00 00 e8 b1 d3 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 c4 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 87 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 68 bb c5 c8 f7 7f 00 00 e8 72 d3 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 c4 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 87 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 68 bb c5 c8 f7 7f 00 00 e8 33 d3 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 c4 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 87 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 68 bb c5 c8 f7 7f 00 00 e8 f4 d2 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 c4 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 87 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 68 bb c5 c8 f7 7f 00 00 e8 b5 d2 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 c3}
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
0031h mov rcx,7ff7c8c5bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c5 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 d7 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 c9 b9 5e}
004fh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86c90d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 90 6c c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c5bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c5 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 d7 b9 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 c8 b9 5e}
008eh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86c90c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 90 6c c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c5bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c5 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 d7 b9 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 c8 b9 5e}
00cdh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86c90b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 90 6c c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8c5bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c5 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 d7 b9 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 c8 b9 5e}
010ch mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c86c90a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 90 6c c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8c5bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c5 c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 d6 b9 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 c8 b9 5e}
014bh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c86c9098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 90 6c c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8c5bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c5 c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 d6 b9 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 c7 b9 5e}
018ah mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c86c9088h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 90 6c c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8c5bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c5 c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 d6 b9 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 c7 b9 5e}
01c9h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c86c8888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 88 6c c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8c5bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c5 c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 d6 b9 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 c7 b9 5e}
0208h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c86c8878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 88 6c c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8c5bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c5 c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 d5 b9 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 c7 b9 5e}
0247h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c86c8868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 88 6c c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8c5bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c5 c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 d5 b9 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da c6 b9 5e}
0286h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c86c8858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 88 6c c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8c5bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c5 c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a d5 b9 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b c6 b9 5e}
02c5h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c86c8848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 88 6c c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8c5bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c5 c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b d5 b9 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c c6 b9 5e}
0304h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c86c8838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 88 6c c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8c5bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c5 c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec d4 b9 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d c6 b9 5e}
0343h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c86c8828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 88 6c c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8c5bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c5 c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad d4 b9 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de c5 b9 5e}
0382h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c86c8818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 88 6c c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8c5bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c5 c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e d4 b9 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f c5 b9 5e}
03c1h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c86c8808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 88 6c c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8c5bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c5 c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f d4 b9 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 c5 b9 5e}
0400h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c86c87f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 87 6c c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8c5bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c5 c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 d3 b9 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 c5 b9 5e}
043fh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c86c87e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 87 6c c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8c5bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c5 c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 d3 b9 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 c4 b9 5e}
047eh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c86c87d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 87 6c c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8c5bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c5 c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 d3 b9 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 c4 b9 5e}
04bdh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c86c87c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 87 6c c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8c5bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c5 c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 d3 b9 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 c4 b9 5e}
04fch mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c86c87b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 87 6c c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8c5bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c5 c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 d2 b9 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 c4 b9 5e}
053bh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c86c87a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 87 6c c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8c5bb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bb c5 c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 d2 b9 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 e6 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<ushort>> lookup<ushort>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_g[16u](n256,TernaryBitLogicKind~8u)[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 f0 cf b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 c1 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 92 6c c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 b1 cf b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 c0 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 92 6c c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 72 cf b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 c0 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 92 6c c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 33 cf b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 c0 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 92 6c c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 f4 ce b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 c0 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 92 6c c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 b5 ce b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 bf b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 92 6c c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 76 ce b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 bf b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 92 6c c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 37 ce b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 bf b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 92 6c c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 f8 cd b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 bf b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 92 6c c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 b9 cd b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea be b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 91 6c c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 7a cd b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab be b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 91 6c c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 3b cd b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c be b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 91 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 fc cc b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d be b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 91 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 bd cc b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee bd b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 91 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 7e cc b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 af bd b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 91 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 3f cc b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 70 bd b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 91 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 00 cc b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 bd b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 91 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 c1 cb b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 bc b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 91 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 82 cb b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 bc b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 91 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 43 cb b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 bc b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 91 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 04 cb b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 bc b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 91 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 c5 ca b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 bb b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 91 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 86 ca b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 bb b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 91 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 47 ca b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 bb b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 91 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 08 ca b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 bb b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 91 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 cc c9 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd ba b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 90 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d8 bd c5 c8 f7 7f 00 00 e8 90 c9 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 ba b9 5e 48 b8 d0 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 e8 90 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 cf b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 c1 b9 5e}
004fh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86c9288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 92 6c c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 cf b9 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 c0 b9 5e}
008eh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86c9278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 92 6c c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 cf b9 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 c0 b9 5e}
00cdh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86c9268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 92 6c c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 cf b9 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 c0 b9 5e}
010ch mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c86c9258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 92 6c c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 ce b9 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 c0 b9 5e}
014bh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c86c9248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 92 6c c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 ce b9 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 bf b9 5e}
018ah mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c86c9238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 92 6c c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 ce b9 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 bf b9 5e}
01c9h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c86c9228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 92 6c c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 ce b9 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 bf b9 5e}
0208h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c86c9218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 92 6c c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 cd b9 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 bf b9 5e}
0247h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c86c9208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 92 6c c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 cd b9 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea be b9 5e}
0286h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c86c91f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 91 6c c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a cd b9 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab be b9 5e}
02c5h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c86c91e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 91 6c c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b cd b9 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c be b9 5e}
0304h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c86c91d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 91 6c c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc cc b9 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d be b9 5e}
0343h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c86c91c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 91 6c c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd cc b9 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee bd b9 5e}
0382h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c86c91b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 91 6c c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e cc b9 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af bd b9 5e}
03c1h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c86c91a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 91 6c c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f cc b9 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 bd b9 5e}
0400h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c86c9198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 91 6c c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 cc b9 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 bd b9 5e}
043fh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c86c9188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 91 6c c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 cb b9 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 bc b9 5e}
047eh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c86c9178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 91 6c c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 cb b9 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 bc b9 5e}
04bdh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c86c9168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 91 6c c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 cb b9 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 bc b9 5e}
04fch mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c86c9158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 91 6c c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 cb b9 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 bc b9 5e}
053bh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c86c9148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 91 6c c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 ca b9 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 bb b9 5e}
057ah mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c86c9138h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 91 6c c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 ca b9 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 bb b9 5e}
05b9h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c86c9128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 91 6c c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 ca b9 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 bb b9 5e}
05f8h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c86c9118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 91 6c c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 ca b9 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 bb b9 5e}
0637h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c86c9108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 91 6c c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc c9 b9 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd ba b9 5e}
0673h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c86c90f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 90 6c c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8c5bdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bd c5 c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 c9 b9 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 ba b9 5e}
06afh mov rax,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 ea 62 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c86c90e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 90 6c c8 f7 7f 00 00}
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
; lookup_g[16i](n256,TernaryBitLogicKind~8u)[1133] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 48 c0 c5 c8 f7 7f 00 00 e8 00 c8 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 b9 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 94 6c c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 48 c0 c5 c8 f7 7f 00 00 e8 c1 c7 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 b8 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 94 6c c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 48 c0 c5 c8 f7 7f 00 00 e8 82 c7 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 b8 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 94 6c c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 48 c0 c5 c8 f7 7f 00 00 e8 43 c7 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 b8 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 94 6c c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 48 c0 c5 c8 f7 7f 00 00 e8 04 c7 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 b8 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 93 6c c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 48 c0 c5 c8 f7 7f 00 00 e8 c5 c6 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 b7 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 93 6c c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 48 c0 c5 c8 f7 7f 00 00 e8 86 c6 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 b7 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 93 6c c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 48 c0 c5 c8 f7 7f 00 00 e8 47 c6 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 b7 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 93 6c c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 48 c0 c5 c8 f7 7f 00 00 e8 08 c6 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 b7 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 93 6c c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 48 c0 c5 c8 f7 7f 00 00 e8 c9 c5 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa b6 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 93 6c c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 48 c0 c5 c8 f7 7f 00 00 e8 8a c5 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb b6 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 93 6c c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 48 c0 c5 c8 f7 7f 00 00 e8 4b c5 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c b6 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 93 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 48 c0 c5 c8 f7 7f 00 00 e8 0c c5 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d b6 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 93 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 48 c0 c5 c8 f7 7f 00 00 e8 cd c4 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe b5 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 93 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 48 c0 c5 c8 f7 7f 00 00 e8 8e c4 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf b5 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 93 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 48 c0 c5 c8 f7 7f 00 00 e8 4f c4 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 80 b5 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 93 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 48 c0 c5 c8 f7 7f 00 00 e8 10 c4 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 b5 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 93 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 48 c0 c5 c8 f7 7f 00 00 e8 d1 c3}
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
0031h mov rcx,7ff7c8c5c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c5 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 c8 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 b9 b9 5e}
004fh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86c9438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 94 6c c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c5c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c5 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 c7 b9 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 b8 b9 5e}
008eh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86c9428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 94 6c c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c5c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c5 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 c7 b9 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 b8 b9 5e}
00cdh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86c9418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 94 6c c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8c5c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c5 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 c7 b9 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 b8 b9 5e}
010ch mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c86c9408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 94 6c c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8c5c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c5 c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 c7 b9 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 b8 b9 5e}
014bh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c86c93f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 93 6c c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8c5c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c5 c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 c6 b9 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 b7 b9 5e}
018ah mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c86c93e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 93 6c c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8c5c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c5 c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 c6 b9 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 b7 b9 5e}
01c9h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c86c93d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 93 6c c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8c5c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c5 c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 c6 b9 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 b7 b9 5e}
0208h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c86c93c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 93 6c c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8c5c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c5 c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 c6 b9 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 b7 b9 5e}
0247h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c86c93b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 93 6c c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8c5c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c5 c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 c5 b9 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa b6 b9 5e}
0286h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c86c93a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 93 6c c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8c5c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c5 c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a c5 b9 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb b6 b9 5e}
02c5h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c86c9398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 93 6c c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8c5c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c5 c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b c5 b9 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c b6 b9 5e}
0304h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c86c9388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 93 6c c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8c5c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c5 c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c c5 b9 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d b6 b9 5e}
0343h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c86c9378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 93 6c c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8c5c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c5 c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd c4 b9 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe b5 b9 5e}
0382h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c86c9368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 93 6c c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8c5c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c5 c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e c4 b9 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf b5 b9 5e}
03c1h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c86c9358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 93 6c c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8c5c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c5 c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f c4 b9 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 b5 b9 5e}
0400h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c86c9348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 93 6c c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8c5c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c5 c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 c4 b9 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 b5 b9 5e}
043fh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c86c9338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 93 6c c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8c5c048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 c5 c8 f7 7f 00 00}
046ah (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 d1 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<uint>> lookup<uint>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_g[32u](n256,TernaryBitLogicKind~8u)[202] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b8 c2 c5 c8 f7 7f 00 00 e8 10 bc b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 ad b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 ad 6c c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 b8 c2 c5 c8 f7 7f 00 00 e8 d1 bb b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 ad b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 ad 6c c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 b8 c2 c5 c8 f7 7f 00 00 e8 92 bb b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
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
0031h mov rcx,7ff7c8c5c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c5 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 bc b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 ad b9 5e}
004fh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86cadb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 ad 6c c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c5c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c5 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 bb b9 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 ad b9 5e}
008eh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86cada8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ad 6c c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c5c2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c2 c5 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 bb b9 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<int>> lookup<int>(N256 w, TernaryBitLogicKind:byte kind)
; lookup_g[32i](n256,TernaryBitLogicKind~8u)[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 20 b4 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 51 a5 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 af 6c c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 e1 b3 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 a5 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 af 6c c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 a2 b3 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 a4 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 af 6c c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 63 b3 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 a4 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 af 6c c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 24 b3 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 a4 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 af 6c c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 e5 b2 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 16 a4 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 af 6c c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 a6 b2 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d7 a3 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 af 6c c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 67 b2 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 a3 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 ae 6c c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 28 b2 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 a3 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 ae 6c c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 e9 b1 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1a a3 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 ae 6c c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 aa b1 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db a2 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 ae 6c c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 6b b1 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c a2 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 ae 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 2c b1 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d a2 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 ae 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 ed b0 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1e a2 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 ae 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 ae b0 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 df a1 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 ae 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 6f b0 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a0 a1 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 ae 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 30 b0 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 a1 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 ae 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 f1 af b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 a1 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 ae 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 b2 af b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 a0 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 ae 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 73 af b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 a0 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 ae 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 34 af b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 a0 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 ae 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 f5 ae b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 a0 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 ae 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 b6 ae b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 9f b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 ae 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 77 ae b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 9f b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 ad 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 38 ae b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 9f b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 ad 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 fc ad b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d 9f b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 ad 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 28 c5 c5 c8 f7 7f 00 00 e8 c0 ad b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 9e b9 5e 48 b8 d0 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 c8 ad 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 b4 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 a5 b9 5e}
004fh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86caf68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 af 6c c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 b3 b9 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 a5 b9 5e}
008eh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86caf58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 6c c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 b3 b9 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 a4 b9 5e}
00cdh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86caf48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 af 6c c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 b3 b9 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 a4 b9 5e}
010ch mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c86caf38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 af 6c c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 b3 b9 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 a4 b9 5e}
014bh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c86caf28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 af 6c c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 b2 b9 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 a4 b9 5e}
018ah mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c86caf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 af 6c c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 b2 b9 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 a3 b9 5e}
01c9h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c86caf08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 af 6c c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 b2 b9 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 a3 b9 5e}
0208h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c86caef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ae 6c c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 b2 b9 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 a3 b9 5e}
0247h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c86caee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ae 6c c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 b1 b9 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a a3 b9 5e}
0286h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c86caed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ae 6c c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa b1 b9 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db a2 b9 5e}
02c5h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c86caec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ae 6c c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b b1 b9 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c a2 b9 5e}
0304h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c86caeb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 ae 6c c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c b1 b9 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d a2 b9 5e}
0343h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c86caea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ae 6c c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed b0 b9 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e a2 b9 5e}
0382h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c86cae98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ae 6c c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae b0 b9 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df a1 b9 5e}
03c1h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c86cae88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ae 6c c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f b0 b9 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 a1 b9 5e}
0400h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c86cae78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ae 6c c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 b0 b9 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 a1 b9 5e}
043fh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c86cae68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ae 6c c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 af b9 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 a1 b9 5e}
047eh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c86cae58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 ae 6c c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 af b9 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 a0 b9 5e}
04bdh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c86cae48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ae 6c c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 af b9 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 a0 b9 5e}
04fch mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c86cae38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ae 6c c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 af b9 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 a0 b9 5e}
053bh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c86cae28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ae 6c c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 ae b9 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 a0 b9 5e}
057ah mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c86cae18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ae 6c c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 ae b9 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 9f b9 5e}
05b9h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c86cae08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ae 6c c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 ae b9 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 9f b9 5e}
05f8h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c86cadf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ad 6c c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 ae b9 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 9f b9 5e}
0637h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c86cade8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ad 6c c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc ad b9 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 9f b9 5e}
0673h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c86cadd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ad 6c c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8c5c528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c5 c5 c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 ad b9 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 9e b9 5e}
06afh mov rax,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 ea 62 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c86cadc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 ad 6c c8 f7 7f 00 00}
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
; lookup_g[64u](n256,TernaryBitLogicKind~8u)[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 30 a8 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 99 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 c0 6c c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 f1 a7 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 99 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 c0 6c c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 b2 a7 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 98 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 c0 6c c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 73 a7 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 98 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 c0 6c c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 34 a7 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 98 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 c0 6c c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 f5 a6 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 98 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 c0 6c c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 b6 a6 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 97 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 c0 6c c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 77 a6 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 97 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 c0 6c c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 38 a6 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 97 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 c0 6c c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 f9 a5 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2a 97 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 c0 6c c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 ba a5 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb 96 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 c0 6c c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 7b a5 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac 96 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 c0 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 3c a5 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d 96 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 c0 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 fd a4 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2e 96 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 b0 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 be a4 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ef 95 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 b0 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 7f a4 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b0 95 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 b0 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 40 a4 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 95 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 b0 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 01 a4 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 95 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 b0 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 c2 a3 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 94 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 af 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 83 a3 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 94 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 af 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 44 a3 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 94 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 af 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 05 a3 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 94 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 af 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 c6 a2 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 93 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 af 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 87 a2 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 93 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 af 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 48 a2 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 93 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 af 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 0c a2 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d 93 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 af 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 98 c7 c5 c8 f7 7f 00 00 e8 d0 a1 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 93 b9 5e 48 b8 d0 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 78 af 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 a8 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 99 b9 5e}
004fh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86cc0f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 c0 6c c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 a7 b9 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 99 b9 5e}
008eh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86cc0e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c0 6c c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 a7 b9 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 98 b9 5e}
00cdh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86cc0d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 c0 6c c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 a7 b9 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 98 b9 5e}
010ch mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c86cc0c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 c0 6c c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 a7 b9 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 98 b9 5e}
014bh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c86cc0b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c0 6c c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 a6 b9 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 98 b9 5e}
018ah mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c86cc0a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c0 6c c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 a6 b9 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 97 b9 5e}
01c9h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c86cc098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c0 6c c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 a6 b9 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 97 b9 5e}
0208h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c86cc088h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c0 6c c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 a6 b9 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 97 b9 5e}
0247h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c86cc078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c0 6c c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 a5 b9 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 97 b9 5e}
0286h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c86cc068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 c0 6c c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba a5 b9 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 96 b9 5e}
02c5h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c86cc058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c0 6c c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b a5 b9 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 96 b9 5e}
0304h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c86cc048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c0 6c c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c a5 b9 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 96 b9 5e}
0343h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c86cc038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 c0 6c c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd a4 b9 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 96 b9 5e}
0382h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c86cb048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b0 6c c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be a4 b9 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 95 b9 5e}
03c1h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c86cb038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b0 6c c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f a4 b9 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 95 b9 5e}
0400h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c86cb028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 b0 6c c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 a4 b9 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 95 b9 5e}
043fh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c86cb018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b0 6c c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 a4 b9 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 95 b9 5e}
047eh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c86cb008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b0 6c c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 a3 b9 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 94 b9 5e}
04bdh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c86caff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 af 6c c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 a3 b9 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 94 b9 5e}
04fch mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c86cafe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 af 6c c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 a3 b9 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 94 b9 5e}
053bh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c86cafd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 af 6c c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 a3 b9 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 94 b9 5e}
057ah mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c86cafc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 af 6c c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 a2 b9 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 93 b9 5e}
05b9h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c86cafb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 af 6c c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 a2 b9 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 93 b9 5e}
05f8h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c86cafa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 af 6c c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 a2 b9 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 93 b9 5e}
0637h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c86caf98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 af 6c c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c a2 b9 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 93 b9 5e}
0673h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c86caf88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 af 6c c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8c5c798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c7 c5 c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 a1 b9 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 93 b9 5e}
06afh mov rax,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 ea 62 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c86caf78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 af 6c c8 f7 7f 00 00}
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
; lookup_g[64i](n256,TernaryBitLogicKind~8u)[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 3e 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 08 ca c5 c8 f7 7f 00 00 e8 40 a0 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 91 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 c2 6c c8 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 01 a0 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 91 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 c2 6c c8 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 c2 9f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 90 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 c2 6c c8 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 83 9f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 90 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 c2 6c c8 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 44 9f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 90 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 c2 6c c8 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 05 9f b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 90 b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 c2 6c c8 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 c6 9e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 8f b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 c2 6c c8 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 87 9e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 8f b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 c2 6c c8 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 48 9e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 8f b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 c2 6c c8 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 09 9e b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3a 8f b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 c2 6c c8 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 ca 9d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb 8e b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 08 c2 6c c8 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 8b 9d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc 8e b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 f8 c1 6c c8 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 4c 9d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7d 8e b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 e8 c1 6c c8 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 0d 9d b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3e 8e b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 d8 c1 6c c8 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 ce 9c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ff 8d b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 c8 c1 6c c8 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 8f 9c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c0 8d b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 b8 c1 6c c8 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 50 9c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 8d b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 a8 c1 6c c8 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 11 9c b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 8d b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 98 c1 6c c8 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 d2 9b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 8d b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 88 c1 6c c8 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 93 9b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 8c b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 78 c1 6c c8 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 54 9b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 8c b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 68 c1 6c c8 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 15 9b b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 8c b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 58 c1 6c c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 d6 9a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 8c b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 48 c1 6c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 97 9a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 8b b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 38 c1 6c c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 08 ca c5 c8 f7 7f 00 00 e8 58 9a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 8b b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 28 c1 6c c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 08 ca c5 c8 f7 7f 00 00 e8 1c 9a b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4d 8b b9 5e 48 b9 d0 ea 62 c7 f7 7f 00 00 48 89 4e 18 48 b9 18 c1 6c c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 08 ca c5 c8 f7 7f 00 00 e8 e0 99 b9 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 8b b9 5e 48 b8 d0 ea 62 c7 f7 7f 00 00 48 89 46 18 48 b8 08 c1 6c c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 a0 b9 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 91 b9 5e}
004fh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c86cc2a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c2 6c c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 a0 b9 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 91 b9 5e}
008eh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c86cc298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c2 6c c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 9f b9 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 90 b9 5e}
00cdh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c86cc288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c2 6c c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 9f b9 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 90 b9 5e}
010ch mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c86cc278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c2 6c c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
0137h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 9f b9 5e}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 90 b9 5e}
014bh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c86cc268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 c2 6c c8 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
0176h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 9f b9 5e}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 90 b9 5e}
018ah mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c86cc258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c2 6c c8 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
01b5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 9e b9 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 8f b9 5e}
01c9h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c86cc248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c2 6c c8 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
01f4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 9e b9 5e}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 8f b9 5e}
0208h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c86cc238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 c2 6c c8 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
0233h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 9e b9 5e}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 8f b9 5e}
0247h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c86cc228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c2 6c c8 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
0272h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 9e b9 5e}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 8f b9 5e}
0286h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c86cc218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c2 6c c8 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
02b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 9d b9 5e}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 8e b9 5e}
02c5h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c86cc208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 c2 6c c8 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
02f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 9d b9 5e}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 8e b9 5e}
0304h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c86cc1f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 c1 6c c8 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
032fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 9d b9 5e}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 8e b9 5e}
0343h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c86cc1e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 c1 6c c8 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
036eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 9d b9 5e}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 8e b9 5e}
0382h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c86cc1d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 c1 6c c8 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
03adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 9c b9 5e}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 8d b9 5e}
03c1h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c86cc1c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 c1 6c c8 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
03ech call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 9c b9 5e}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 8d b9 5e}
0400h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c86cc1b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c1 6c c8 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
042bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 9c b9 5e}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 8d b9 5e}
043fh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c86cc1a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c1 6c c8 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
046ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 9c b9 5e}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 8d b9 5e}
047eh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c86cc198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c1 6c c8 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
04a9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 9b b9 5e}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 8d b9 5e}
04bdh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c86cc188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c1 6c c8 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
04e8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 9b b9 5e}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 8c b9 5e}
04fch mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c86cc178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c1 6c c8 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
0527h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 9b b9 5e}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 8c b9 5e}
053bh mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c86cc168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 c1 6c c8 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
0566h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 9b b9 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 8c b9 5e}
057ah mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c86cc158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c1 6c c8 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
05a5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 9a b9 5e}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 8c b9 5e}
05b9h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c86cc148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c1 6c c8 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
05e4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 9a b9 5e}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 8b b9 5e}
05f8h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c86cc138h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 c1 6c c8 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
0623h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 9a b9 5e}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 8b b9 5e}
0637h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c86cc128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c1 6c c8 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
065fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 9a b9 5e}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 8b b9 5e}
0673h mov rcx,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 62 c7 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c86cc118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c1 6c c8 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c8c5ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca c5 c8 f7 7f 00 00}
069bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 99 b9 5e}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 8b b9 5e}
06afh mov rax,7ff7c762ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 ea 62 c7 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c86cc108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 c1 6c c8 f7 7f 00 00}
06c7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06ceh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
06d2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
06d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d6h ret                                     ; RET || C3 || encoded[1]{c3}
